// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `秘聊`
  String get appName {
    return Intl.message(
      '秘聊',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `欢迎来到密聊!`
  String get slogan {
    return Intl.message(
      '欢迎来到密聊!',
      name: 'slogan',
      desc: '',
      args: [],
    );
  }

  /// `登录`
  String get login {
    return Intl.message(
      '登录',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `请输入账号`
  String get inputAccount {
    return Intl.message(
      '请输入账号',
      name: 'inputAccount',
      desc: '',
      args: [],
    );
  }

  /// `请输入密码`
  String get inputPwd {
    return Intl.message(
      '请输入密码',
      name: 'inputPwd',
      desc: '',
      args: [],
    );
  }

  /// `登录失败`
  String get loginFailed {
    return Intl.message(
      '登录失败',
      name: 'loginFailed',
      desc: '',
      args: [],
    );
  }

  /// `《用户协议》`
  String get user_protocol {
    return Intl.message(
      '《用户协议》',
      name: 'user_protocol',
      desc: '',
      args: [],
    );
  }

  /// `《用户协议》`
  String get privacy_protocol {
    return Intl.message(
      '《用户协议》',
      name: 'privacy_protocol',
      desc: '',
      args: [],
    );
  }

  /// `立即注册`
  String get register {
    return Intl.message(
      '立即注册',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `账号或密码不能为空`
  String get accountOrPwdIsEmpty {
    return Intl.message(
      '账号或密码不能为空',
      name: 'accountOrPwdIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `账号或邀请码或昵称不能为空`
  String get accountOrInviteCodeOrNickNameIsEmpty {
    return Intl.message(
      '账号或邀请码或昵称不能为空',
      name: 'accountOrInviteCodeOrNickNameIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `请输入邀请码`
  String get inputInviteCode {
    return Intl.message(
      '请输入邀请码',
      name: 'inputInviteCode',
      desc: '',
      args: [],
    );
  }

  /// `请输入昵称`
  String get inputNickName {
    return Intl.message(
      '请输入昵称',
      name: 'inputNickName',
      desc: '',
      args: [],
    );
  }

  /// `阅读并同意`
  String get read_agree {
    return Intl.message(
      '阅读并同意',
      name: 'read_agree',
      desc: '',
      args: [],
    );
  }

  /// `和`
  String get and {
    return Intl.message(
      '和',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `密码不能为空`
  String get pwd_is_empty {
    return Intl.message(
      '密码不能为空',
      name: 'pwd_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `请输入新密码`
  String get input_new_pwd {
    return Intl.message(
      '请输入新密码',
      name: 'input_new_pwd',
      desc: '',
      args: [],
    );
  }

  /// `再次输入新密码`
  String get input_new_pwd_again {
    return Intl.message(
      '再次输入新密码',
      name: 'input_new_pwd_again',
      desc: '',
      args: [],
    );
  }

  /// `设置新密码`
  String get set_pwd_title {
    return Intl.message(
      '设置新密码',
      name: 'set_pwd_title',
      desc: '',
      args: [],
    );
  }

  /// `消息`
  String get message_list_nav_title {
    return Intl.message(
      '消息',
      name: 'message_list_nav_title',
      desc: '',
      args: [],
    );
  }

  /// `编辑`
  String get message_list_nav_edit {
    return Intl.message(
      '编辑',
      name: 'message_list_nav_edit',
      desc: '',
      args: [],
    );
  }

  /// `取消`
  String get message_list_nav_cancel {
    return Intl.message(
      '取消',
      name: 'message_list_nav_cancel',
      desc: '',
      args: [],
    );
  }

  /// `完成`
  String get message_list_nav_complete {
    return Intl.message(
      '完成',
      name: 'message_list_nav_complete',
      desc: '',
      args: [],
    );
  }

  /// `联系人`
  String get linkman {
    return Intl.message(
      '联系人',
      name: 'linkman',
      desc: '',
      args: [],
    );
  }

  /// `新群组`
  String get contact_new_group {
    return Intl.message(
      '新群组',
      name: 'contact_new_group',
      desc: '',
      args: [],
    );
  }

  /// `群组`
  String get contact_group {
    return Intl.message(
      '群组',
      name: 'contact_group',
      desc: '',
      args: [],
    );
  }

  /// `新朋友`
  String get contact_new_friend {
    return Intl.message(
      '新朋友',
      name: 'contact_new_friend',
      desc: '',
      args: [],
    );
  }

  /// `好友`
  String get contact_friend {
    return Intl.message(
      '好友',
      name: 'contact_friend',
      desc: '',
      args: [],
    );
  }

  /// `搜索联系人`
  String get search_linkman {
    return Intl.message(
      '搜索联系人',
      name: 'search_linkman',
      desc: '',
      args: [],
    );
  }

  /// `我的信息`
  String get my_profile {
    return Intl.message(
      '我的信息',
      name: 'my_profile',
      desc: '',
      args: [],
    );
  }

  /// `我的收藏`
  String get my_collection {
    return Intl.message(
      '我的收藏',
      name: 'my_collection',
      desc: '',
      args: [],
    );
  }

  /// `新消息通知`
  String get new_msg_notify {
    return Intl.message(
      '新消息通知',
      name: 'new_msg_notify',
      desc: '',
      args: [],
    );
  }

  /// `我的文件`
  String get my_file {
    return Intl.message(
      '我的文件',
      name: 'my_file',
      desc: '',
      args: [],
    );
  }

  /// `安全`
  String get safe {
    return Intl.message(
      '安全',
      name: 'safe',
      desc: '',
      args: [],
    );
  }

  /// `设置`
  String get setting {
    return Intl.message(
      '设置',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `文件`
  String get file {
    return Intl.message(
      '文件',
      name: 'file',
      desc: '',
      args: [],
    );
  }

  /// `所有文件`
  String get all_file {
    return Intl.message(
      '所有文件',
      name: 'all_file',
      desc: '',
      args: [],
    );
  }

  /// `会话文件`
  String get session_file {
    return Intl.message(
      '会话文件',
      name: 'session_file',
      desc: '',
      args: [],
    );
  }

  /// `用户文件`
  String get user_file {
    return Intl.message(
      '用户文件',
      name: 'user_file',
      desc: '',
      args: [],
    );
  }

  /// `修改密码`
  String get modify_pwd {
    return Intl.message(
      '修改密码',
      name: 'modify_pwd',
      desc: '',
      args: [],
    );
  }

  /// `消息`
  String get profile_msg {
    return Intl.message(
      '消息',
      name: 'profile_msg',
      desc: '',
      args: [],
    );
  }

  /// `语音`
  String get profile_voice {
    return Intl.message(
      '语音',
      name: 'profile_voice',
      desc: '',
      args: [],
    );
  }

  /// `视频`
  String get profile_vodeo {
    return Intl.message(
      '视频',
      name: 'profile_vodeo',
      desc: '',
      args: [],
    );
  }

  /// `关闭通知`
  String get profile_close_notify {
    return Intl.message(
      '关闭通知',
      name: 'profile_close_notify',
      desc: '',
      args: [],
    );
  }

  /// `打开通知`
  String get profile_open_notify {
    return Intl.message(
      '打开通知',
      name: 'profile_open_notify',
      desc: '',
      args: [],
    );
  }

  /// `搜索`
  String get profile_search {
    return Intl.message(
      '搜索',
      name: 'profile_search',
      desc: '',
      args: [],
    );
  }

  /// `用户名`
  String get profile_user_name {
    return Intl.message(
      '用户名',
      name: 'profile_user_name',
      desc: '',
      args: [],
    );
  }

  /// `添加联系人`
  String get profile_add_linkman {
    return Intl.message(
      '添加联系人',
      name: 'profile_add_linkman',
      desc: '',
      args: [],
    );
  }

  /// `备注`
  String get profile_remark {
    return Intl.message(
      '备注',
      name: 'profile_remark',
      desc: '',
      args: [],
    );
  }

  /// `拉黑用户`
  String get profile_block {
    return Intl.message(
      '拉黑用户',
      name: 'profile_block',
      desc: '',
      args: [],
    );
  }

  /// `移除黑名单`
  String get profile_remove_block {
    return Intl.message(
      '移除黑名单',
      name: 'profile_remove_block',
      desc: '',
      args: [],
    );
  }

  /// `二维码`
  String get qr_code {
    return Intl.message(
      '二维码',
      name: 'qr_code',
      desc: '',
      args: [],
    );
  }

  /// `置顶`
  String get pin_to_top {
    return Intl.message(
      '置顶',
      name: 'pin_to_top',
      desc: '',
      args: [],
    );
  }

  /// `取消置顶`
  String get un_pin {
    return Intl.message(
      '取消置顶',
      name: 'un_pin',
      desc: '',
      args: [],
    );
  }

  /// `关闭通知`
  String get turn_off_notification {
    return Intl.message(
      '关闭通知',
      name: 'turn_off_notification',
      desc: '',
      args: [],
    );
  }

  /// `开启通知`
  String get turn_on_notification {
    return Intl.message(
      '开启通知',
      name: 'turn_on_notification',
      desc: '',
      args: [],
    );
  }

  /// `标记已读`
  String get mark_as_read {
    return Intl.message(
      '标记已读',
      name: 'mark_as_read',
      desc: '',
      args: [],
    );
  }

  /// `设为未读`
  String get mark_as_unread {
    return Intl.message(
      '设为未读',
      name: 'mark_as_unread',
      desc: '',
      args: [],
    );
  }

  /// `删除`
  String get swipe_del {
    return Intl.message(
      '删除',
      name: 'swipe_del',
      desc: '',
      args: [],
    );
  }

  /// `扫一扫`
  String get menu_scan {
    return Intl.message(
      '扫一扫',
      name: 'menu_scan',
      desc: '',
      args: [],
    );
  }

  /// `添加群聊`
  String get menu_add_group {
    return Intl.message(
      '添加群聊',
      name: 'menu_add_group',
      desc: '',
      args: [],
    );
  }

  /// `创建群聊`
  String get menu_create_group {
    return Intl.message(
      '创建群聊',
      name: 'menu_create_group',
      desc: '',
      args: [],
    );
  }

  /// `添加好友`
  String get menu_add_friend {
    return Intl.message(
      '添加好友',
      name: 'menu_add_friend',
      desc: '',
      args: [],
    );
  }

  /// `扫一扫上面的二维码，加我为好友`
  String get scan_qr_tip {
    return Intl.message(
      '扫一扫上面的二维码，加我为好友',
      name: 'scan_qr_tip',
      desc: '',
      args: [],
    );
  }

  /// `我的信息`
  String get my_info {
    return Intl.message(
      '我的信息',
      name: 'my_info',
      desc: '',
      args: [],
    );
  }

  /// `返回登录`
  String get return_login {
    return Intl.message(
      '返回登录',
      name: 'return_login',
      desc: '',
      args: [],
    );
  }

  /// `完成注册`
  String get complete_register {
    return Intl.message(
      '完成注册',
      name: 'complete_register',
      desc: '',
      args: [],
    );
  }

  /// `两次密码不一样`
  String get two_different_passwords {
    return Intl.message(
      '两次密码不一样',
      name: 'two_different_passwords',
      desc: '',
      args: [],
    );
  }

  /// `搜索消息或用户`
  String get search_placeholder {
    return Intl.message(
      '搜索消息或用户',
      name: 'search_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `头像`
  String get avatar {
    return Intl.message(
      '头像',
      name: 'avatar',
      desc: '',
      args: [],
    );
  }

  /// `二维码名片`
  String get qr_code_business_card {
    return Intl.message(
      '二维码名片',
      name: 'qr_code_business_card',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get id {
    return Intl.message(
      'ID',
      name: 'id',
      desc: '',
      args: [],
    );
  }

  /// `昵称`
  String get nickname {
    return Intl.message(
      '昵称',
      name: 'nickname',
      desc: '',
      args: [],
    );
  }

  /// `修改昵称`
  String get change_nickname {
    return Intl.message(
      '修改昵称',
      name: 'change_nickname',
      desc: '',
      args: [],
    );
  }

  /// `保存`
  String get save {
    return Intl.message(
      '保存',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `好名字可以让您的朋友更容易记住您（最大长度20位）`
  String get change_nickname_tip {
    return Intl.message(
      '好名字可以让您的朋友更容易记住您（最大长度20位）',
      name: 'change_nickname_tip',
      desc: '',
      args: [],
    );
  }

  /// `复制成功`
  String get copy_success {
    return Intl.message(
      '复制成功',
      name: 'copy_success',
      desc: '',
      args: [],
    );
  }

  /// `请输入原密码`
  String get original_pwd {
    return Intl.message(
      '请输入原密码',
      name: 'original_pwd',
      desc: '',
      args: [],
    );
  }

  /// `原密码不能为空`
  String get original_pwd_is_empty {
    return Intl.message(
      '原密码不能为空',
      name: 'original_pwd_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `原密码和新密码不能一样`
  String get original_pwd_new_pwd_same {
    return Intl.message(
      '原密码和新密码不能一样',
      name: 'original_pwd_new_pwd_same',
      desc: '',
      args: [],
    );
  }

  /// `新密码两次不一样`
  String get new_pwd_is_not_same {
    return Intl.message(
      '新密码两次不一样',
      name: 'new_pwd_is_not_same',
      desc: '',
      args: [],
    );
  }

  /// `新密码不能为空`
  String get new_pwd_is_empty {
    return Intl.message(
      '新密码不能为空',
      name: 'new_pwd_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `密码长度必须大于6位`
  String get pwd_length_sort {
    return Intl.message(
      '密码长度必须大于6位',
      name: 'pwd_length_sort',
      desc: '',
      args: [],
    );
  }

  /// `密码修改成功`
  String get change_pwd_success {
    return Intl.message(
      '密码修改成功',
      name: 'change_pwd_success',
      desc: '',
      args: [],
    );
  }

  /// `重置密码`
  String get reset_pwd {
    return Intl.message(
      '重置密码',
      name: 'reset_pwd',
      desc: '',
      args: [],
    );
  }

  /// `将取景框对准二维码即可自动扫描`
  String get scan_title {
    return Intl.message(
      '将取景框对准二维码即可自动扫描',
      name: 'scan_title',
      desc: '',
      args: [],
    );
  }

  /// `邀请好友`
  String get add_friend {
    return Intl.message(
      '邀请好友',
      name: 'add_friend',
      desc: '',
      args: [],
    );
  }

  /// `确定`
  String get sure {
    return Intl.message(
      '确定',
      name: 'sure',
      desc: '',
      args: [],
    );
  }

  /// `请输入邀请理由`
  String get input_invite_reason {
    return Intl.message(
      '请输入邀请理由',
      name: 'input_invite_reason',
      desc: '',
      args: [],
    );
  }

  /// `你需要发送验证申请，等对方通过`
  String get invite_reason_tip {
    return Intl.message(
      '你需要发送验证申请，等对方通过',
      name: 'invite_reason_tip',
      desc: '',
      args: [],
    );
  }

  /// `邀请成功`
  String get send_invite_success {
    return Intl.message(
      '邀请成功',
      name: 'send_invite_success',
      desc: '',
      args: [],
    );
  }

  /// `我的群组`
  String get my_group {
    return Intl.message(
      '我的群组',
      name: 'my_group',
      desc: '',
      args: [],
    );
  }

  /// `我是`
  String get i_am {
    return Intl.message(
      '我是',
      name: 'i_am',
      desc: '',
      args: [],
    );
  }

  /// `好友请求`
  String get friend_request_title {
    return Intl.message(
      '好友请求',
      name: 'friend_request_title',
      desc: '',
      args: [],
    );
  }

  /// `修改昵称成功`
  String get modify_nickname_success {
    return Intl.message(
      '修改昵称成功',
      name: 'modify_nickname_success',
      desc: '',
      args: [],
    );
  }

  /// `昵称不能为空`
  String get nickname_is_empty {
    return Intl.message(
      '昵称不能为空',
      name: 'nickname_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `媒体`
  String get media {
    return Intl.message(
      '媒体',
      name: 'media',
      desc: '',
      args: [],
    );
  }

  /// `链接`
  String get link {
    return Intl.message(
      '链接',
      name: 'link',
      desc: '',
      args: [],
    );
  }

  /// `群组`
  String get group {
    return Intl.message(
      '群组',
      name: 'group',
      desc: '',
      args: [],
    );
  }

  /// `请输入备注信息`
  String get input_remark {
    return Intl.message(
      '请输入备注信息',
      name: 'input_remark',
      desc: '',
      args: [],
    );
  }

  /// `请勾选相关协议`
  String get agree_protocol {
    return Intl.message(
      '请勾选相关协议',
      name: 'agree_protocol',
      desc: '',
      args: [],
    );
  }

  /// `消息设置`
  String get mssage_setting {
    return Intl.message(
      '消息设置',
      name: 'mssage_setting',
      desc: '',
      args: [],
    );
  }

  /// `密聊开关`
  String get secret_setting {
    return Intl.message(
      '密聊开关',
      name: 'secret_setting',
      desc: '',
      args: [],
    );
  }

  /// `暂无数据`
  String get no_data_tip {
    return Intl.message(
      '暂无数据',
      name: 'no_data_tip',
      desc: '',
      args: [],
    );
  }

  /// `图片`
  String get photo {
    return Intl.message(
      '图片',
      name: 'photo',
      desc: '',
      args: [],
    );
  }

  /// `更多`
  String get more_title {
    return Intl.message(
      '更多',
      name: 'more_title',
      desc: '',
      args: [],
    );
  }

  /// `请输入密聊key`
  String get input_secret_key {
    return Intl.message(
      '请输入密聊key',
      name: 'input_secret_key',
      desc: '',
      args: [],
    );
  }

  /// `请再次输入密聊key`
  String get input_secret_key_again {
    return Intl.message(
      '请再次输入密聊key',
      name: 'input_secret_key_again',
      desc: '',
      args: [],
    );
  }

  /// `密聊key不能为空`
  String get secret_key_is_empty {
    return Intl.message(
      '密聊key不能为空',
      name: 'secret_key_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `密聊key两次不一样`
  String get secret_key_is_no_same {
    return Intl.message(
      '密聊key两次不一样',
      name: 'secret_key_is_no_same',
      desc: '',
      args: [],
    );
  }

  /// `设置密聊key成功`
  String get set_secret_key_success {
    return Intl.message(
      '设置密聊key成功',
      name: 'set_secret_key_success',
      desc: '',
      args: [],
    );
  }

  /// `设置密聊key`
  String get set_secret_key {
    return Intl.message(
      '设置密聊key',
      name: 'set_secret_key',
      desc: '',
      args: [],
    );
  }

  /// `输入消息…`
  String get input_msg {
    return Intl.message(
      '输入消息…',
      name: 'input_msg',
      desc: '',
      args: [],
    );
  }

  /// `按下说话`
  String get press_to_speak {
    return Intl.message(
      '按下说话',
      name: 'press_to_speak',
      desc: '',
      args: [],
    );
  }

  /// `加入密聊成功`
  String get join_secret_success {
    return Intl.message(
      '加入密聊成功',
      name: 'join_secret_success',
      desc: '',
      args: [],
    );
  }

  /// `移除密聊成功`
  String get remove_secret_success {
    return Intl.message(
      '移除密聊成功',
      name: 'remove_secret_success',
      desc: '',
      args: [],
    );
  }

  /// `设置密聊开关`
  String get set_secret_turn_off {
    return Intl.message(
      '设置密聊开关',
      name: 'set_secret_turn_off',
      desc: '',
      args: [],
    );
  }

  /// `密聊开关`
  String get secret_turn_off {
    return Intl.message(
      '密聊开关',
      name: 'secret_turn_off',
      desc: '',
      args: [],
    );
  }

  /// `密`
  String get secret {
    return Intl.message(
      '密',
      name: 'secret',
      desc: '',
      args: [],
    );
  }

  /// `修改头像`
  String get modify_avatar_title {
    return Intl.message(
      '修改头像',
      name: 'modify_avatar_title',
      desc: '',
      args: [],
    );
  }

  /// `修改`
  String get modify_avatar {
    return Intl.message(
      '修改',
      name: 'modify_avatar',
      desc: '',
      args: [],
    );
  }

  /// `搜索用户`
  String get search_user {
    return Intl.message(
      '搜索用户',
      name: 'search_user',
      desc: '',
      args: [],
    );
  }

  /// `撤销`
  String get popup_revocation {
    return Intl.message(
      '撤销',
      name: 'popup_revocation',
      desc: '',
      args: [],
    );
  }

  /// `取消`
  String get popup_cancel {
    return Intl.message(
      '取消',
      name: 'popup_cancel',
      desc: '',
      args: [],
    );
  }

  /// `收藏`
  String get popup_collect {
    return Intl.message(
      '收藏',
      name: 'popup_collect',
      desc: '',
      args: [],
    );
  }

  /// `复制`
  String get popup_copy {
    return Intl.message(
      '复制',
      name: 'popup_copy',
      desc: '',
      args: [],
    );
  }

  /// `删除`
  String get popup_del {
    return Intl.message(
      '删除',
      name: 'popup_del',
      desc: '',
      args: [],
    );
  }

  /// `转发`
  String get popup_forward {
    return Intl.message(
      '转发',
      name: 'popup_forward',
      desc: '',
      args: [],
    );
  }

  /// `多选`
  String get popup_multipleChoice {
    return Intl.message(
      '多选',
      name: 'popup_multipleChoice',
      desc: '',
      args: [],
    );
  }

  /// `回复`
  String get popup_repl {
    return Intl.message(
      '回复',
      name: 'popup_repl',
      desc: '',
      args: [],
    );
  }

  /// `全部删除`
  String get message_edit_all_del {
    return Intl.message(
      '全部删除',
      name: 'message_edit_all_del',
      desc: '',
      args: [],
    );
  }

  /// `请选择联系人`
  String get please_select_user {
    return Intl.message(
      '请选择联系人',
      name: 'please_select_user',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
