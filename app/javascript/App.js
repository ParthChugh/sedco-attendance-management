// app/javascript/App.js
import React from 'react';
import {
  BrowserRouter as Router,
  Link
} from "react-router-dom";
import Routes from './Routes';

export default class App extends React.Component {
  render() {
    const {name} =  this.props;

    return (
      <Router>
        {name}
        <Routes />
      </Router>
    );
  }
}
