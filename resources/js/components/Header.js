import React from 'react';
import { BrowserRouter as Router, Route, Link, NavLink, Switch } from 'react-router-dom';
import bootstrap from 'bootstrap/dist/css/bootstrap.css';  
import SampleList from './SampleList';
import SampleCreate from './SampleCreate';
import SampleEdit from './SampleEdit';

    const Header = () => (
      <Switch>  
    <div>  


            <Route exact path="/" component={SampleList} />  
            <Route  path="/create" component={SampleCreate} />  
            <Route  path="/tasks/:id/edit" component={SampleEdit} />  

          </div>  
        </Switch>  
    )

    export default Header
