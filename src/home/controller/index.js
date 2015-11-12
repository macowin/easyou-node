'use strict';

import Base from './base.js';

export default class extends Base {
  /**
   * index action
   * @return {Promise} []
   */
  indexAction () {
    //auto render template file index_index.html
    return this.display();
  }

  * loginAction (self) {
    console.log("login");
    if (this.isGet()) {

      return this.display();

    } else if (this.isPost()) {

      let map = {
        user: self.post('user'),
        pass: self.post('pass')
      };
      let data = yield self.model('users').where(map).find();

      if (think.isEmpty(data)) {
        self.redirect ('/login');
      } else {
        self.session('user', map.user);
        self.redirect('/admin');
      }
    }
  }


  * regAction (self) {
        
        if (self.isGet()) {
            return self.display()

        } else if (self.isPost()) {
            let map = {
                user: self.post('user'),
                pass: self.post('pass')
            }
            let data = yield self.model('users').thenAdd(map, {user: map.user});
            
            if (data) {
                self.redirect('/login');
            } else {
                self.redirect('/reg');
            }
        }
    }

}