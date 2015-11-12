'use strict';var _inherits = require('babel-runtime/helpers/inherits')['default'];var _classCallCheck = require('babel-runtime/helpers/class-call-check')['default'];var _regeneratorRuntime = require('babel-runtime/regenerator')['default'];var _interopRequireDefault = require('babel-runtime/helpers/interop-require-default')['default'];exports.__esModule = true;var _baseJs = require(

'./base.js');var _baseJs2 = _interopRequireDefault(_baseJs);var _default = (function (_Base) {_inherits(_default, _Base);function _default() {_classCallCheck(this, _default);_Base.apply(this, arguments);}


  /**
   * index action
   * @return {Promise} []
   */_default.prototype.
  indexAction = function indexAction() {
    //auto render template file index_index.html
    return this.display();};_default.prototype.


  loginAction = _regeneratorRuntime.mark(function loginAction(self) {var 







    map, 



    data;return _regeneratorRuntime.wrap(function loginAction$(context$2$0) {while (1) switch (context$2$0.prev = context$2$0.next) {case 0:console.log("login");if (!this.isGet()) {context$2$0.next = 5;break;}return context$2$0.abrupt('return', this.display());case 5:if (!this.isPost()) {context$2$0.next = 11;break;}map = { user: self.post('user'), pass: self.post('pass') };context$2$0.next = 9;return self.model('users').where(map).find();case 9:data = context$2$0.sent;

          if (think.isEmpty(data)) {
            self.redirect('/login');} else 
          {
            self.session('user', map.user);
            self.redirect('/admin');}case 11:case 'end':return context$2$0.stop();}}, loginAction, this);});_default.prototype.





  regAction = _regeneratorRuntime.mark(function regAction(self) {var 





    map, 



    data;return _regeneratorRuntime.wrap(function regAction$(context$2$0) {while (1) switch (context$2$0.prev = context$2$0.next) {case 0:if (!self.isGet()) {context$2$0.next = 4;break;}return context$2$0.abrupt('return', self.display());case 4:if (!self.isPost()) {context$2$0.next = 10;break;}map = { user: self.post('user'), pass: self.post('pass') };context$2$0.next = 8;return self.model('users').thenAdd(map, { user: map.user });case 8:data = context$2$0.sent;

          if (data) {
            self.redirect('/login');} else 
          {
            self.redirect('/reg');}case 10:case 'end':return context$2$0.stop();}}, regAction, this);});return _default;})(_baseJs2['default']);exports['default'] = _default;module.exports = exports['default'];