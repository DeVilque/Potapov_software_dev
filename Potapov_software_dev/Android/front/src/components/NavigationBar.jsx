import React from 'react';
import { Navbar, Nav } from 'react-bootstrap'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faHome, faUser, faBars } from '@fortawesome/free-solid-svg-icons'
import { Link, useNavigate } from 'react-router-dom';
import Utils from '../utils/Utils';
import { userActions } from '../utils/Rdx';
import BackendService from '../services/BackendService';
import {connect} from 'react-redux';

class NavigationBarClass extends React.Component {

    constructor(props) {
        super(props);
        this.goHome = this.goHome.bind(this);
        this.logout = this.logout.bind(this);
    }

    goHome() {
        this.props.navigate('Home');
    }

    logout() {
        BackendService.logout().then(() => {
            Utils.removeUser();
            this.props.dispatch(userActions.logout())
            this.props.navigate('Login');
        });
    }

    render() {
        let uname = Utils.getUserName();
        return (
            <Navbar bg="light" expand="lg">
                <button type="button"
                    className="btn btn-outline-secondary mr-2"
                    onClick={this.props.toggleSideBar}>
                    <FontAwesomeIcon icon={faBars} />
                </button>
            <Navbar.Brand><FontAwesomeIcon icon={faHome} />{' '}My RPO</Navbar.Brand>
            <Navbar.Toggle aria-controls="basic-navbar-nav" />
            <Navbar.Collapse id="basic-navbar-nav">
                <Nav className="me-auto">
                    <Nav.Link as={Link} to="/home">Home</Nav.Link>
                    <Nav.Link onClick={this.goHome}>Another Home</Nav.Link>
                    <Nav.Link onClick={() =>{ this.props.navigate("\\home")}}>Yet Another Home</Nav.Link>
                </Nav>
                <Nav.Link>{uname}</Nav.Link>
                { uname &&
                <Nav.Link onClick={this.logout}><FontAwesomeIcon icon={faUser} fixedWidth />{' '}Выход</Nav.Link>
                }
                { !uname &&
                <Nav.Link as={Link} to="/login"><FontAwesomeIcon icon={faUser} fixedWidth />{' '}Вход{' '}</Nav.Link>
                }
            </Navbar.Collapse>
        </Navbar>
        );
    }
}

const mapStateToProps = state => {
    const { user } = state.authentication;
    return { user };
}

const NavigationBar = props => {
    const navigate = useNavigate()

    return <NavigationBarClass navigate={navigate} {...props} />
}

export default connect(mapStateToProps)(NavigationBar);