import React, { useState, useEffect } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faSave, faTimes } from '@fortawesome/free-solid-svg-icons';
import Alert from './Alert';
import BackendService from '../services/BackendService';

const UserComponent = () => {
    const { id } = useParams();
    const navigate = useNavigate();
    
    const [user, setUser] = useState({
        id: null,
        name: ''
    });
    
    const [message, setMessage] = useState(null);
    const [showAlert, setShowAlert] = useState(false);

    useEffect(() => {
        if (parseInt(id) !== -1) {
            BackendService.retrieveUser(id)
                .then(resp => {
                    setUser(resp.data);
                })
                .catch(() => {
                    setMessage('Ошибка при загрузке пользователя');
                    setShowAlert(true);
                });
        }
    }, [id]);

    const handleSubmit = (e) => {
        e.preventDefault();
        
        if (!user.login) {
            setMessage('Пожалуйста, введите логин');
            setShowAlert(true);
            return;
        }

        const savePromise = id === '-1' 
            ? BackendService.createUser(user)
            : BackendService.updateUser(user);

        savePromise
            .then(() => {
                navigate('/users');
            })
            .catch(error => {
                setMessage('Ошибка при сохранении: ' + (error.response?.data?.message || error.message));
                setShowAlert(true);
            });
    };

    const handleChange = (e) => {
        const { name, value } = e.target;
        setUser(prevUser => ({
            ...prevUser,
            [name]: value
        }));
    };

    const closeAlert = () => {
        setShowAlert(false);
    };

    return (
        <div className="m-4">
            <div className="row my-2">
                <h3>{id === '-1' ? 'Создать страну' : 'Редактировать страну'}</h3>
            </div>
            
            <form onSubmit={handleSubmit}>
                <div className="form-group">
                    <label htmlFor="login">Логин</label>
                    <input
                        type="text"
                        className="form-control"
                        id="login"
                        name="login"
                        value={user.login}
                        onChange={handleChange}
                        placeholder="Введите логин"
                    />
                </div>
                <div className="form-group">
                    <label htmlFor="email">Мыло</label>
                    <input
                        type="text"
                        className="form-control"
                        id="email"
                        name="email"
                        value={user.email}
                        onChange={handleChange}
                        placeholder="Введите почту"
                    />
                </div>
                
                <div className="btn-toolbar my-2">
                    <div className="btn-group">
                        <button type="submit" className="btn btn-outline-success">
                            <FontAwesomeIcon icon={faSave} /> Сохранить
                        </button>
                    </div>
                    <div className="btn-group ms-2">
                        <button 
                            type="button" 
                            className="btn btn-outline-secondary"
                            onClick={() => navigate('/users')}
                        >
                            <FontAwesomeIcon icon={faTimes} /> Отмена
                        </button>
                    </div>
                </div>
            </form>
            
            <Alert 
                title="Ошибка"
                message={message}
                close={closeAlert}
                modal={showAlert}
                cancelButton={false}
            />
        </div>
    );
};

export default UserComponent;