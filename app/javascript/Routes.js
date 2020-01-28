// app/javascript/routes.js
import React from 'react';
import {
  Switch,
  Route,
} from "react-router-dom";
import LoginSignUp from './bundles/LoginSignUp';
import PostDetails from './bundles/posts/PostDetails';
import CreatePost from './bundles/posts/CreatePost';
import UpdatePost from './bundles/posts/UpdatePost';

export default () => {
  return (
    <Switch>
      <Route exact path="/">
        <LoginSignUp />
      </Route>
    </Switch>
  );
}
