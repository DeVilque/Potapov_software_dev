import './App.css';
import React, {useState} from "react";
import {BrowserRouter, Route, Routes, Navigate} from "react-router-dom";
import NavigationBar from "./components/NavigationBar";
import CountryListComponent from './components/CountryListComponent';
import CountryComponent from './components/CountryComponent'
import SideBar from './components/SideBar';
import Home from "./components/Home";
import Login from "./components/Login";
import Utils from "./utils/Utils";
import { connect } from 'react-redux'
import MyAccountComponent from './components/MyAccountComponent';
import UserComponent from './components/UserComponent';
import UserListComponent from './components/UserListComponent';

const ProtectedRoute = ({children}) => {
    let user = Utils.getUser();
    return user ? children : <Navigate to={'/login'} />
};

const App = props => {

    const [exp,setExpanded] = useState(true);
        return (
            <div className="App">
                <BrowserRouter>
                    <NavigationBar toggleSideBar={() =>
                        setExpanded(!exp)}/>
                        <div className="wrapper">
                            <SideBar expanded={exp} />
                            <div className="container-fluid">
                                { props.error_message &&  <div className="alert alert-danger m-1">{props.error_message}</div>}
                                <Routes>
                                    <Route path="login" element={<Login />}/>
                                    <Route path="home" element={<ProtectedRoute><Home/></ProtectedRoute>}/>
                                    <Route path="countries" element={<ProtectedRoute><CountryListComponent/></ProtectedRoute>}/>
                                    <Route path="countries/:id" element={<ProtectedRoute><CountryComponent /></ProtectedRoute>}/>
                                    <Route path="users" element={<ProtectedRoute><UserListComponent/></ProtectedRoute>}/>
                                    <Route path="users/:id" element={<ProtectedRoute><UserComponent /></ProtectedRoute>}/>
                                    <Route path="users/me" element={<ProtectedRoute><MyAccountComponent /></ProtectedRoute>}/>
                                </Routes>
                            </div>
                        </div>
                </BrowserRouter>
            </div>
        );
    }

function mapStateToProps(state) {
    const { msg } = state.alert;
    return { error_message: msg };
}

export default connect(mapStateToProps)(App);
