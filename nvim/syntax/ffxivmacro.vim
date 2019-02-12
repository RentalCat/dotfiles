syntax match FFXIVComment +#.*$+

" チャット: /say(/s) 文章自分の周囲の狭い範囲にいる人に文章を送信する
syntax match FFXIVMacroKeyword +^/say+
" チャット: /yell(/y) 文章自分の周囲の広い範囲にいる人に文章を送信する
syntax match FFXIVMacroKeyword +^/yell+
" チャット: /shout(/sh) 文章自分が現在いるエリアで、エリアにいるPC全員へ文章を送信
syntax match FFXIVMacroKeyword +^/shout+
" チャット: /tell(/t) PC名@ワールド名 文章同一ワールド内の指定したPCに文章を送信する
syntax match FFXIVMacroKeyword +^/tell+
" チャット: /reply(/r) 文章最後に着信したTellの相手PCに文章を送信する
syntax match FFXIVMacroKeyword +^/reply+
" チャット: /cleartellhistory(/cth)Tellのリプライをする宛先履歴を全件消去する
syntax match FFXIVMacroKeyword +^/cleartellhistory+
" チャット: /party(/p) 文章同じパーティメンバー全員に、距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/party+
" チャット: /alliance(/a) 文章同じアライアンスメンバー全員に、距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/alliance+
" チャット: /freecompany(/fc) 文章自分が所属しているフリーカンパニーのメンバーであるPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/freecompany+
" チャット: /pvpteam(/pt) 文章PvPチームに参加中のPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/pvpteam+
" チャット: /cwlinkshell(/cwl) 文章クロスワールドリンクシェルに参加中のPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/cwlinkshell+
" チャット: /linkshell(/l) 文章現在設定中のカレントリンクシェルに属するPC全員に距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/linkshell+
" チャット: /linkshell1(/l1) 文章1番目に登録されているリンクシェルに属するPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/linkshell1+
" チャット: /linkshell2(/l2) 文章2番目に登録されているリンクシェルに属するPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/linkshell2+
" チャット: /linkshell3(/l3) 文章3番目に登録されているリンクシェルに属するPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/linkshell3+
" チャット: /linkshell4(/l4) 文章4番目に登録されているリンクシェルに属するPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/linkshell4+
" チャット: /linkshell5(/l5) 文章5番目に登録されているリンクシェルに属するPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/linkshell5+
" チャット: /linkshell6(/l6) 文章6番目に登録されているリンクシェルに属するPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/linkshell6+
" チャット: /linkshell7(/l7) 文章7番目に登録されているリンクシェルに属するPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/linkshell7+
" チャット: /linkshell8(/l8) 文章8番目に登録されているリンクシェルに属するPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/linkshell8+
" チャット: /beginner(/b) 文章ビギナーチャンネルに参加中のPCに距離、エリアを問わず文章を送信する
syntax match FFXIVMacroKeyword +^/beginner+
" チャット: /echo(/e) 文章自分だけに見える文章を表示する
syntax match FFXIVMacroKeyword +^/echo+
" チャット: /clearlog(/cl)ログの内容をすべて消去する
syntax match FFXIVMacroKeyword +^/clearlog+
" チャット: /quickchat(/qchat) クイックチャット 代名詞クイックチャットを送信する
syntax match FFXIVMacroKeyword +^/quickchat+
" パーティ／ソーシャル: /joinパーティへの招待を承諾する
syntax match FFXIVMacroKeyword +^/join+
" パーティ／ソーシャル: /declineパーティへの招待を辞退する
syntax match FFXIVMacroKeyword +^/decline+
" パーティ／ソーシャル: /invite 代名詞指定したPCをパーティに招待する
syntax match FFXIVMacroKeyword +^/invite+
" パーティ／ソーシャル: /kick 代名詞指定したPCをパーティから除外する
syntax match FFXIVMacroKeyword +^/kick+
" パーティ／ソーシャル: /leader 代名詞指定したPCへパーティリーダーを委譲する
syntax match FFXIVMacroKeyword +^/leader+
" パーティ／ソーシャル: /leaveパーティから離脱する
syntax match FFXIVMacroKeyword +^/leave+
" パーティ／ソーシャル: /partycmd(/pcmd) サブコマンドパーティに関するコマンドを実行する
syntax match FFXIVMacroKeyword +^/partycmd+
" パーティ／ソーシャル: /partysort(/psort)パーティリストを決められた順番に並び替える
syntax match FFXIVMacroKeyword +^/partysort+
" パーティ／ソーシャル: /replayready(/recordready) サブコマンドリプレイレディチェックの操作を行う
syntax match FFXIVMacroKeyword +^/replayready+
" パーティ／ソーシャル: /readycheck(/rcheck)レディチェックを開始する
syntax match FFXIVMacroKeyword +^/readycheck+
" パーティ／ソーシャル: /readyok(/rok,/ready,/rd)レディチェックが行われている場合、「OK」と回答する
syntax match FFXIVMacroKeyword +^/readyok+
" パーティ／ソーシャル: /readyng(/rng,/notready,/nr)レディチェックが行われている場合、「NG」と回答する
syntax match FFXIVMacroKeyword +^/readyng+
" パーティ／ソーシャル: /countdown(/cd) サブコマンド戦闘開始カウントの操作を行う
syntax match FFXIVMacroKeyword +^/countdown+
" パーティ／ソーシャル: /friendlist(/flist) サブコマンドフレンドリストに関するコマンドを実行する
syntax match FFXIVMacroKeyword +^/friendlist+
" パーティ／ソーシャル: /blacklist(/blist) サブコマンドブラックリストに関するコマンドを実行する
syntax match FFXIVMacroKeyword +^/blacklist+
" 対PC／NPC／オブジェクト: /check(/c) 代名詞指定したPCを調べる
syntax match FFXIVMacroKeyword +^/check+
" 対PC／NPC／オブジェクト: /trade 代名詞指定したPCにトレードを申し込む
syntax match FFXIVMacroKeyword +^/trade+
" 対PC／NPC／オブジェクト: /automove サブコマンド自動移動の設定を行う
syntax match FFXIVMacroKeyword +^/automove+
" 対PC／NPC／オブジェクト: /follow 代名詞指定したPCを自動追尾する
syntax match FFXIVMacroKeyword +^/follow+
" 対PC／NPC／オブジェクト: /meldrequest 代名詞指定したPCにマテリア装着依頼をする
syntax match FFXIVMacroKeyword +^/meldrequest+
" アクション／ホットバー: /action(/ac) "アクション名" 代名詞指定したキャラクターに指定したアクションを実行する
syntax match FFXIVMacroKeyword +^/action+
" アクション／ホットバー: /blueaction "青魔法名" 代名詞指定したキャラクターに指定した青魔法を実行する
syntax match FFXIVMacroKeyword +^/blueaction+
" アクション／ホットバー: /pvpaction(/pvpac) "PvPアクション名" 代名詞指定したキャラクターに指定したPvPアクションを実行する
syntax match FFXIVMacroKeyword +^/pvpaction+
" アクション／ホットバー: /generalaction(/gaction) "ジェネラルアクション名" 代名詞指定したキャラクターに指定したジェネラルアクションを実行する
syntax match FFXIVMacroKeyword +^/generalaction+
" アクション／ホットバー: /buddyaction(/bac,/companionaction,/cac) "バディアクション名"指定したバディアクションを実行する
syntax match FFXIVMacroKeyword +^/buddyaction+
" アクション／ホットバー: /petaction(/pac) "ペットアクション名" 代名詞指定したキャラクターに指定したペットアクションを実行する
syntax match FFXIVMacroKeyword +^/petaction+
" アクション／ホットバー: /mount "マウント名"指定したマウントに騎乗する
syntax match FFXIVMacroKeyword +^/mount+
" アクション／ホットバー: /minion "ミニオン名"指定したミニオンを呼び出す
syntax match FFXIVMacroKeyword +^/minion+
" アクション／ホットバー: /recast "アクション名"指定したアクションが使用可能になるまでの残り時間をログに表示する
syntax match FFXIVMacroKeyword +^/recast+
" アクション／ホットバー: /additionalaction(/aaction) "アクション名" サブコマンド指定したアクションを「ロールアクション」および「アディショナルアクション（ギャザラー／クラフター）」として設定する
syntax match FFXIVMacroKeyword +^/additionalaction+
" アクション／ホットバー: /bluespellbook サブコマンド青魔法のアクティブアクションの設定を行う
syntax match FFXIVMacroKeyword +^/bluespellbook+
" アクション／ホットバー: /addpvpaction(/apa) "PvPアディショナルアクション1" "PvPアディショナルアクション2"PvPアディショナルアクションを設定する
syntax match FFXIVMacroKeyword +^/addpvpaction+
" アクション／ホットバー: /addpvptrait(/apt) "PvP特性1" "PvP特性2" "PvP特性3"PvP特性を設定する
syntax match FFXIVMacroKeyword +^/addpvptrait+
" アクション／ホットバー: /hotbar サブコマンドホットバーを操作、設定する
syntax match FFXIVMacroKeyword +^/hotbar+
" アクション／ホットバー: /pvphotbar サブコマンドPvP専用ホットバーを操作、設定する
syntax match FFXIVMacroKeyword +^/pvphotbar+
" アクション／ホットバー: /crosshotbar(/chotbar,/xhb) サブコマンドクロスホットバーセットを操作、設定する
syntax match FFXIVMacroKeyword +^/crosshotbar+
" アクション／ホットバー: /pvpcrosshotbar(/pvpchotbar,/pvpxhb) サブコマンドPvP専用クロスホットバーセットを操作、設定する
syntax match FFXIVMacroKeyword +^/pvpcrosshotbar+
" アクション／ホットバー: /crosshotbardisplay(/chotbardisplay) サブコマンドキャラクターコンフィグ「クロスホットバーを常時表示する」を設定する
syntax match FFXIVMacroKeyword +^/crosshotbardisplay+
" アクション／ホットバー: /crosshotbartype(/chotbartype)  サブコマンドキャラクターコンフィグ「クロスホットバー操作タイプ設定」を設定する
syntax match FFXIVMacroKeyword +^/crosshotbartype+
" バトル: /battlemode(/bm) サブコマンド武器を納刀／抜刀する
syntax match FFXIVMacroKeyword +^/battlemode+
" バトル: /target(/ta) 代名詞指定したキャラクターをターゲットする
syntax match FFXIVMacroKeyword +^/target+
" バトル: /targetpc(/tpc)ターゲット可能範囲にいるPCで、一番近い位置にいるPCをターゲットする
syntax match FFXIVMacroKeyword +^/targetpc+
" バトル: /targetnpc(/tnpc)ターゲット可能範囲にいるNPCで、一番近い位置にいるキャラクターをターゲットする
syntax match FFXIVMacroKeyword +^/targetnpc+
" バトル: /targetenemy(/tenemy)ターゲット可能範囲にいる敵で、一番近い位置にいるキャラクターをターゲットする
syntax match FFXIVMacroKeyword +^/targetenemy+
" バトル: /battletarget(/bt)自分を敵視している敵で、一番近い位置にいるキャラクターをターゲットする
syntax match FFXIVMacroKeyword +^/battletarget+
" バトル: /assist(/as) 代名詞指定したキャラクターが現在ターゲットしているキャラクターを、自分のターゲットにする
syntax match FFXIVMacroKeyword +^/assist+
" バトル: /facetarget(/ft)自分の向いている方向を、ターゲットしているキャラクターへ向ける
syntax match FFXIVMacroKeyword +^/facetarget+
" バトル: /nexttarget(/nt)自分から画面右側の敵を順番にターゲットする
syntax match FFXIVMacroKeyword +^/nexttarget+
" バトル: /previoustarget自分から画面左側の敵を順番にターゲットする
syntax match FFXIVMacroKeyword +^/previoustarget+
" バトル: /targetlasttarget(/tlt)最後にターゲットしたキャラクターをターゲットする
syntax match FFXIVMacroKeyword +^/targetlasttarget+
" バトル: /targetlastenemy(/tle)最後にターゲットした敵をターゲットする
syntax match FFXIVMacroKeyword +^/targetlastenemy+
" バトル: /lockon(/lo) サブコマンドターゲットしているキャラクターをロックオン／ロックオン解除する
syntax match FFXIVMacroKeyword +^/lockon+
" バトル: /focustarget 代名詞指定したキャラクターをフォーカスターゲットする
syntax match FFXIVMacroKeyword +^/focustarget+
" バトル: /marking(/mk) タイプ 代名詞指定したキャラクターに指定したタイプのマーカーを設定する
syntax match FFXIVMacroKeyword +^/marking+
" バトル: /fieldmarking(/fmk,/waymark,/wmark) サブコマンド 代名詞フィールドマーカーを設置する
syntax match FFXIVMacroKeyword +^/fieldmarking+
" バトル: /statusoff "バフステータス名"指定したバフステータスを解除する
syntax match FFXIVMacroKeyword +^/statusoff+
" その他の機能: /? コマンド名指定したコマンドの説明文を表示する
syntax match FFXIVMacroKeyword +^/?+
" その他の機能: /title サブコマンド称号を変更する
syntax match FFXIVMacroKeyword +^/title+
" その他の機能: /gearset(/gs) サブコマンドギアセットに関する操作を行う
syntax match FFXIVMacroKeyword +^/gearset+
" その他の機能: /itemsort(/isort) サブコマンド所持品などのアイテムを「せいとん」よりも、さらに細かく並び替えの条件を設定して、アイテムの並び替えを実行する
syntax match FFXIVMacroKeyword +^/itemsort+
" その他の機能: /itemsearch(/isearch) 文章入力された文章から所持品検索を実行する
syntax match FFXIVMacroKeyword +^/itemsearch+
" その他の機能: /levelsync(/lsync) サブコマンドF.A.T.E.などのコンテンツで、レベルシンク可能な状況のとき、レベルシンクを実行する
syntax match FFXIVMacroKeyword +^/levelsync+
" その他の機能: /random0～999の数字の1つをランダムに抽選して、ログに表示する
syntax match FFXIVMacroKeyword +^/random+
" その他の機能: /visor頭装備の操作を行う
syntax match FFXIVMacroKeyword +^/visor+
" その他の機能: /legacymark(/lmark) サブコマンド自分に十二神の印を表示するかを設定する
syntax match FFXIVMacroKeyword +^/legacymark+
" その他の機能: /facecamera(/fcam)カメラ目線をし続ける
syntax match FFXIVMacroKeyword +^/facecamera+
" その他の機能: /grouppose(/gpose)グループポーズを実行する
syntax match FFXIVMacroKeyword +^/grouppose+
" その他の機能: /idlingcamera(/icam) 代名詞景観カメラを実行する
syntax match FFXIVMacroKeyword +^/idlingcamera+
" その他の機能: /gaussbarrel(/gbarrel) サブコマンドガウスバレルの表示設定を変更する
syntax match FFXIVMacroKeyword +^/gaussbarrel+
" その他の機能: /egimirage エギの名前 見た目次以降に召喚するエギの見た目を変更する
syntax match FFXIVMacroKeyword +^/egimirage+
" その他の機能: /bahamutsize サブコマンドデミ・バハムートの表示サイズを変更する
syntax match FFXIVMacroKeyword +^/bahamutsize+
" その他の機能: /alarm サブコマンドアラームの設定をする
syntax match FFXIVMacroKeyword +^/alarm+
" その他の機能: /hud "HUD名" サブコマンド指定したHUDの表示／非表示を設定する
syntax match FFXIVMacroKeyword +^/hud+
" その他の機能: /hudreset現在のレイアウトのHUDの位置と拡大率と透過度を初期化する
syntax match FFXIVMacroKeyword +^/hudreset+
" その他の機能: /uiresetすべてのHUDレイアウト(1-4)とウィンドウの位置と拡大率と透過度を初期化する
syntax match FFXIVMacroKeyword +^/uireset+
" その他の機能: /uiscale サブコマンド現在のレイアウトのHUDとウィンドウの拡大率を変更する
syntax match FFXIVMacroKeyword +^/uiscale+
" その他の機能: /jobhudmode サブコマンド現在のジョブHUDの表示モード（ノーマル／シンプル）を変更する
syntax match FFXIVMacroKeyword +^/jobhudmode+
" その他の機能: /search(/sea) 条件指定した条件でPCをサーチして、結果をPCサーチのメニューで表示する
syntax match FFXIVMacroKeyword +^/search+
" その他の機能: /lookingforparty(/lfp) サブコマンド クラス／ジョブ指定したクラス／ジョブで、オンラインステータスを「パーティ希望」に設定する
syntax match FFXIVMacroKeyword +^/lookingforparty+
" その他の機能: /lookingformeld(/lfm) サブコマンドオンラインステータスを「マテリア装着請負中」に設定する
syntax match FFXIVMacroKeyword +^/lookingformeld+
" その他の機能: /searchcomment(/scomment) 文章指定した文章をサーチコメントとして設定する
syntax match FFXIVMacroKeyword +^/searchcomment+
" その他の機能: /busy サブコマンドオンラインステータスを「取り込み中(Busy)」に設定する
syntax match FFXIVMacroKeyword +^/busy+
" その他の機能: /away(/afk) サブコマンドオンラインステータスを「離席」に設定する
syntax match FFXIVMacroKeyword +^/away+
" その他の機能: /roleplaying サブコマンドオンラインステータスを「ロールプレイ中」に設定する
syntax match FFXIVMacroKeyword +^/roleplaying+
" その他の機能: /playtime(/ptime)現在のキャラクターの累積プレイ時間を表示する
syntax match FFXIVMacroKeyword +^/playtime+
" その他の機能: /logoutログアウトして、タイトル画面へ戻る
syntax match FFXIVMacroKeyword +^/logout+
" その他の機能: /shutdownログアウトして、ゲームを終了する
syntax match FFXIVMacroKeyword +^/shutdown+
" その他の機能: /beginnerstatus(/bstatus) サブコマンドビギナーステータスを変更する
syntax match FFXIVMacroKeyword +^/beginnerstatus+
" その他の機能: /returnerstatusoffリターナーステータスを無効にする
syntax match FFXIVMacroKeyword +^/returnerstatusoff+
" その他の機能: /beginnerchannelinvitation(/bchannelinvitation) サブコマンドビギナーチャンネル勧誘の受付設定を変更する
syntax match FFXIVMacroKeyword +^/beginnerchannelinvitation+
" その他の機能: /beginnerchannelleave(/bchannelleave)ビギナーチャンネルから退室する
syntax match FFXIVMacroKeyword +^/beginnerchannelleave+
" その他の機能: /beginnerchannel(/bchannel) サブコマンドメンターのビギナーチャンネルへの自動参加設定を変更する
syntax match FFXIVMacroKeyword +^/beginnerchannel+
" その他の機能: /duelswitch サブコマンドデュエル申請の受付設定を変更する
syntax match FFXIVMacroKeyword +^/duelswitch+
" その他の機能: /magiarightマギアボードを時計回りに回転する
syntax match FFXIVMacroKeyword +^/magiaright+
" その他の機能: /magialeftマギアボードを反時計回りに回転する
syntax match FFXIVMacroKeyword +^/magialeft+
" その他の機能: /magiaattack 代名詞マギアボードの属性を選択対象の「反属性」に切り替える
syntax match FFXIVMacroKeyword +^/magiaattack+
" その他の機能: /magiadefense 代名詞マギアボードの属性を選択対象と「同属性」に切り替える
syntax match FFXIVMacroKeyword +^/magiadefense+
" その他の機能: /magiaauto サブコマンドマギアボードの自動調整の設定を行う
syntax match FFXIVMacroKeyword +^/magiaauto+
" マクロ専用: /wait 時間マクロ専用
syntax match FFXIVMacroKeyword +^/wait+
" マクロ専用: /macroicon(/micon) アイコン名 カテゴリー名マクロ専用
syntax match FFXIVMacroKeyword +^/macroicon+
" マクロ専用: /macrolock(/mlock)マクロ専用
syntax match FFXIVMacroKeyword +^/macrolock+
" マクロ専用: /macroerror(/merror) サブコマンドマクロ専用
syntax match FFXIVMacroKeyword +^/macroerror+
" マクロ専用: /macrocancel(/mcancel)チャット入力欄からの実行専用
syntax match FFXIVMacroKeyword +^/macrocancel+
" コンフィグ: /autolockon サブコマンドキャラクターコンフィグ「オートアタック開始時に自動ロックオンを有効にする」を設定する
syntax match FFXIVMacroKeyword +^/autolockon+
" コンフィグ: /autofacetarget サブコマンドキャラクターコンフィグ「アクション実行時にターゲット方向を向く」を設定する
syntax match FFXIVMacroKeyword +^/autofacetarget+
" コンフィグ: /targetring サブコマンドキャラクターコンフィグ「ターゲットリングを表示する」を設定する
syntax match FFXIVMacroKeyword +^/targetring+
" コンフィグ: /targetline サブコマンドキャラクターコンフィグ「ターゲットラインを表示する」を設定する
syntax match FFXIVMacroKeyword +^/targetline+
" コンフィグ: /linkline サブコマンドキャラクターコンフィグ「リンクラインを表示する」を設定する
syntax match FFXIVMacroKeyword +^/linkline+
" コンフィグ: /autotarget サブコマンドキャラクターコンフィグ「未ターゲット時の自動ターゲットを有効にする」を設定する
syntax match FFXIVMacroKeyword +^/autotarget+
" コンフィグ: /displayhead サブコマンドキャラクターコンフィグ「自分の頭装備を表示する」を設定する
syntax match FFXIVMacroKeyword +^/displayhead+
" コンフィグ: /displayarms サブコマンドキャラクターコンフィグ「納刀時にメイン＆サブアームを表示する」を設定する
syntax match FFXIVMacroKeyword +^/displayarms+
" コンフィグ: /autosheathe(/ashathe) サブコマンドキャラクターコンフィグ「メインアームの自動納刀を有効にする」を設定する
syntax match FFXIVMacroKeyword +^/autosheathe+
" コンフィグ: /targetself サブコマンドキャラクターコンフィグ「自分をクリックして選択することを有効にする」を設定する
syntax match FFXIVMacroKeyword +^/targetself+
" コンフィグ: /groundclick サブコマンドキャラクターコンフィグ「フィールドをクリックしてターゲットキャンセルを有効にする」を設定する
syntax match FFXIVMacroKeyword +^/groundclick+
" コンフィグ: /chatlog サブコマンドキャラクターコンフィグのチャットログ設定関連を設定する
syntax match FFXIVMacroKeyword +^/chatlog+
" コンフィグ: /battleeffect 対象 タイプキャラクターコンフィグ「バトルエフェクト設定」を設定する
syntax match FFXIVMacroKeyword +^/battleeffect+
" コンフィグ: /actionerror(/aerror) サブコマンドキャラクターコンフィグ「アクション実行時のスクリーンエラーを表示する」を設定する
syntax match FFXIVMacroKeyword +^/actionerror+
" コンフィグ: /recasterror(/rerror) サブコマンドキャラクターコンフィグ「アクション実行時のリキャストエラーを表示する」を設定する
syntax match FFXIVMacroKeyword +^/recasterror+
" コンフィグ: /tiltcamera サブコマンドキャラクターコンフィグ「カメラの注視角度設定（チルトカメラ）」を変更する
syntax match FFXIVMacroKeyword +^/tiltcamera+
" コンフィグ: /mastervolume サブコマンドマスターボリュームの音量を変更する
syntax match FFXIVMacroKeyword +^/mastervolume+
" コンフィグ: /bgm サブコマンドBGMの音量を変更する
syntax match FFXIVMacroKeyword +^/bgm+
" コンフィグ: /soundeffects サブコマンド効果音の音量を変更する
syntax match FFXIVMacroKeyword +^/soundeffects+
" コンフィグ: /voice サブコマンドボイスの音量を変更する
syntax match FFXIVMacroKeyword +^/voice+
" コンフィグ: /systemsounds サブコマンドシステム音の音量を変更する
syntax match FFXIVMacroKeyword +^/systemsounds+
" コンフィグ: /ambientsounds サブコマンド環境音の音量を変更する
syntax match FFXIVMacroKeyword +^/ambientsounds+
" コンフィグ: /soundeffectsself サブコマンド自分の効果音の音量を変更する
syntax match FFXIVMacroKeyword +^/soundeffectsself+
" コンフィグ: /soundeffectsparty サブコマンドパーティメンバーの効果音の音量を変更する
syntax match FFXIVMacroKeyword +^/soundeffectsparty+
" コンフィグ: /soundeffectsother サブコマンド他人の効果音の音量を変更する
syntax match FFXIVMacroKeyword +^/soundeffectsother+
" コンフィグ: /performsounds サブコマンド楽器演奏の音量を変更する
syntax match FFXIVMacroKeyword +^/performsounds+
" コンフィグ: /mountbgm サブコマンドシステムコンフィグ「騎乗中のBGM再生を有効にする」を設定する
syntax match FFXIVMacroKeyword +^/mountbgm+
" エモート: /emotelog サブコマンドエモート実行時の感情表現テキストのログ表示の設定を行う
syntax match FFXIVMacroKeyword +^/emotelog+
" エモート: /emote(/em) 文章自分の名の後ろに指定した文章を直接つなぎ、感情表現としてSayの範囲のPCに送信する
syntax match FFXIVMacroKeyword +^/emote+
" エモート: /surprised サブコマンドおどろく
syntax match FFXIVMacroKeyword +^/surprised+
" エモート: /angry サブコマンド不満を表す
syntax match FFXIVMacroKeyword +^/angry+
" エモート: /furious サブコマンド怒る
syntax match FFXIVMacroKeyword +^/furious+
" エモート: /blush サブコマンド照れる
syntax match FFXIVMacroKeyword +^/blush+
" エモート: /bow サブコマンドお辞儀する
syntax match FFXIVMacroKeyword +^/bow+
" エモート: /cheer サブコマンド応援する
syntax match FFXIVMacroKeyword +^/cheer+
" エモート: /clap サブコマンド拍手する
syntax match FFXIVMacroKeyword +^/clap+
" エモート: /beckon サブコマンド手まねきする
syntax match FFXIVMacroKeyword +^/beckon+
" エモート: /comfort サブコマンドなぐさめる
syntax match FFXIVMacroKeyword +^/comfort+
" エモート: /cry サブコマンド泣く
syntax match FFXIVMacroKeyword +^/cry+
" エモート: /dance サブコマンド踊る
syntax match FFXIVMacroKeyword +^/dance+
" エモート: /doubt サブコマンド問い詰める
syntax match FFXIVMacroKeyword +^/doubt+
" エモート: /doze サブコマンド居眠りする
syntax match FFXIVMacroKeyword +^/doze+
" エモート: /fume サブコマンド悔しがる
syntax match FFXIVMacroKeyword +^/fume+
" エモート: /goodbye サブコマンドさようなら
syntax match FFXIVMacroKeyword +^/goodbye+
" エモート: /wave サブコマンド手を振る
syntax match FFXIVMacroKeyword +^/wave+
" エモート: /huh サブコマンド呆れる
syntax match FFXIVMacroKeyword +^/huh+
" エモート: /joy サブコマンド喜ぶ
syntax match FFXIVMacroKeyword +^/joy+
" エモート: /kneel サブコマンドひざまずく
syntax match FFXIVMacroKeyword +^/kneel+
" エモート: /chuckle サブコマンド笑う
syntax match FFXIVMacroKeyword +^/chuckle+
" エモート: /laugh サブコマンド大笑いする
syntax match FFXIVMacroKeyword +^/laugh+
" エモート: /lookout サブコマンド見わたす
syntax match FFXIVMacroKeyword +^/lookout+
" エモート: /me サブコマンドアピールする
syntax match FFXIVMacroKeyword +^/me+
" エモート: /no サブコマンド首を横に振る
syntax match FFXIVMacroKeyword +^/no+
" エモート: /deny サブコマンド否定する
syntax match FFXIVMacroKeyword +^/deny+
" エモート: /panic サブコマンド慌てる
syntax match FFXIVMacroKeyword +^/panic+
" エモート: /point サブコマンド指さす
syntax match FFXIVMacroKeyword +^/point+
" エモート: /poke サブコマンドつつく
syntax match FFXIVMacroKeyword +^/poke+
" エモート: /congratulate サブコマンド称賛する
syntax match FFXIVMacroKeyword +^/congratulate+
" エモート: /psych サブコマンド活を入れる
syntax match FFXIVMacroKeyword +^/psych+
" エモート: /salute サブコマンド敬礼する
syntax match FFXIVMacroKeyword +^/salute+
" エモート: /shocked サブコマンド動転する
syntax match FFXIVMacroKeyword +^/shocked+
" エモート: /shrug サブコマンド肩をすくめる
syntax match FFXIVMacroKeyword +^/shrug+
" エモート: /rally サブコマンド励ます
syntax match FFXIVMacroKeyword +^/rally+
" エモート: /soothe サブコマンドなだめる
syntax match FFXIVMacroKeyword +^/soothe+
" エモート: /stagger サブコマンドよろめく
syntax match FFXIVMacroKeyword +^/stagger+
" エモート: /stretch サブコマンド伸びをする
syntax match FFXIVMacroKeyword +^/stretch+
" エモート: /sulk サブコマンドすねる
syntax match FFXIVMacroKeyword +^/sulk+
" エモート: /think サブコマンド考える
syntax match FFXIVMacroKeyword +^/think+
" エモート: /upset サブコマンドがっかりする
syntax match FFXIVMacroKeyword +^/upset+
" エモート: /welcome サブコマンド歓迎する
syntax match FFXIVMacroKeyword +^/welcome+
" エモート: /yes サブコマンドうなずく
syntax match FFXIVMacroKeyword +^/yes+
" エモート: /thumbsup サブコマンド肯定する
syntax match FFXIVMacroKeyword +^/thumbsup+
" エモート: /examineself サブコマンド自分を見る・見せる
syntax match FFXIVMacroKeyword +^/examineself+
" エモート: /pose サブコマンドポーズをとる
syntax match FFXIVMacroKeyword +^/pose+
" エモート: /blowkiss サブコマンド投げキッスをする
syntax match FFXIVMacroKeyword +^/blowkiss+
" エモート: /grovel サブコマンド土下座をする
syntax match FFXIVMacroKeyword +^/grovel+
" エモート: /happy サブコマンドすごく喜ぶ
syntax match FFXIVMacroKeyword +^/happy+
" エモート: /disappointed サブコマンドすごくがっかりする
syntax match FFXIVMacroKeyword +^/disappointed+
" エモート: /sit(/lounge)地面に座る
syntax match FFXIVMacroKeyword +^/sit+
" エモート: /groundsit地面に座る
syntax match FFXIVMacroKeyword +^/groundsit+
" エモート: /airquotes発言中に行う仕草
syntax match FFXIVMacroKeyword +^/airquotes+
" エモート: /pray サブコマンド祈る
syntax match FFXIVMacroKeyword +^/pray+
" エモート: /imperialsalute サブコマンド帝国式敬礼
syntax match FFXIVMacroKeyword +^/imperialsalute+
" エモート: /gcsalute サブコマンド所属グランドカンパニーの敬礼をする
syntax match FFXIVMacroKeyword +^/gcsalute+
" エモート: /throw サブコマンド投げる
syntax match FFXIVMacroKeyword +^/throw+
" エモート: /changepose(/cpose)ポーズを変える
syntax match FFXIVMacroKeyword +^/changepose+
" エモート: /stepdance(/sdance) サブコマンドステップダンスを踊る
syntax match FFXIVMacroKeyword +^/stepdance+
" エモート: /harvestdance(/hdance) サブコマンド豊穣の舞を踊る
syntax match FFXIVMacroKeyword +^/harvestdance+
" エモート: /balldance(/bdance) サブコマンド宮廷の舞を踊る
syntax match FFXIVMacroKeyword +^/balldance+
" エモート: /mandervilledance(/mdance) サブコマンド紳士の舞を踊る
syntax match FFXIVMacroKeyword +^/mandervilledance+
" エモート: /stroke サブコマンドなでる
syntax match FFXIVMacroKeyword +^/stroke+
" エモート: /handover サブコマンドわたす
syntax match FFXIVMacroKeyword +^/handover+
" エモート: /hurray サブコマンド勝ちどきをあげる
syntax match FFXIVMacroKeyword +^/hurray+
" エモート: /slap サブコマンド平手打ちをする
syntax match FFXIVMacroKeyword +^/slap+
" エモート: /hug サブコマンドハグする
syntax match FFXIVMacroKeyword +^/hug+
" エモート: /embrace サブコマンド抱き合う
syntax match FFXIVMacroKeyword +^/embrace+
" エモート: /hildibrand(/hildy) サブコマンド事件屋の決めポーズをする
syntax match FFXIVMacroKeyword +^/hildibrand+
" エモート: /thavdance(/tdance) サブコマンドサベネアンダンスを踊る
syntax match FFXIVMacroKeyword +^/thavdance+
" エモート: /golddance(/gdance) サブコマンドゴールデンダンスを踊る
syntax match FFXIVMacroKeyword +^/golddance+
" エモート: /sundance サブコマンド太陽の舞を踊る
syntax match FFXIVMacroKeyword +^/sundance+
" エモート: /battlestance(/bstance) サブコマンド戦いに備える
syntax match FFXIVMacroKeyword +^/battlestance+
" エモート: /victorypose(/vpose) サブコマンド勝利を喜ぶ
syntax match FFXIVMacroKeyword +^/victorypose+
" エモート: /mogdance サブコマンドモグモグダンスを踊る
syntax match FFXIVMacroKeyword +^/mogdance+
" エモート: /haurchefant(/hknight) サブコマンド「イイ！」をする
syntax match FFXIVMacroKeyword +^/haurchefant+
" エモート: /facepalm サブコマンド顔を覆う
syntax match FFXIVMacroKeyword +^/facepalm+
" エモート: /flex サブコマンド肉体美を誇る
syntax match FFXIVMacroKeyword +^/flex+
" エモート: /respect サブコマンド黙祷を捧げる
syntax match FFXIVMacroKeyword +^/respect+
" エモート: /prettyplease(/pplease) サブコマンドおねだりをする
syntax match FFXIVMacroKeyword +^/prettyplease+
" エモート: /playdead(/pdead) サブコマンド死んだふりをする
syntax match FFXIVMacroKeyword +^/playdead+
" エモート: /moonlift サブコマンド太陽と月の舞を踊る
syntax match FFXIVMacroKeyword +^/moonlift+
" エモート: /spectacles サブコマンド眼鏡を正す
syntax match FFXIVMacroKeyword +^/spectacles+
" エモート: /waterfloat水面に浮く
syntax match FFXIVMacroKeyword +^/waterfloat+
" エモート: /waterflip水中宙返りをする
syntax match FFXIVMacroKeyword +^/waterflip+
" エモート: /powerup サブコマンド力を高める
syntax match FFXIVMacroKeyword +^/powerup+
" エモート: /easternbow(/ebow) サブコマンド東方風のお辞儀をする
syntax match FFXIVMacroKeyword +^/easternbow+
" エモート: /squats サブコマンドスクワットをする
syntax match FFXIVMacroKeyword +^/squats+
" エモート: /pushups サブコマンド腕立て伏せをする
syntax match FFXIVMacroKeyword +^/pushups+
" エモート: /situps サブコマンド腹筋運動をする
syntax match FFXIVMacroKeyword +^/situps+
" エモート: /breathcontrol サブコマンド深呼吸をする
syntax match FFXIVMacroKeyword +^/breathcontrol+
" エモート: /converse サブコマンド話をする
syntax match FFXIVMacroKeyword +^/converse+
" エモート: /attention サブコマンド気をつけの姿勢をする
syntax match FFXIVMacroKeyword +^/attention+
" エモート: /atease サブコマンド休めの姿勢をする
syntax match FFXIVMacroKeyword +^/atease+
" エモート: /box サブコマンド格闘訓練をする
syntax match FFXIVMacroKeyword +^/box+
" エモート: /ritualprayer サブコマンドおまじないをする
syntax match FFXIVMacroKeyword +^/ritualprayer+
" エモート: /charmed サブコマンド魅惑の抱擁で魅了される
syntax match FFXIVMacroKeyword +^/charmed+
" エモート: /tremble サブコマンド怯える
syntax match FFXIVMacroKeyword +^/tremble+
" エモート: /winded サブコマンド膝を突く
syntax match FFXIVMacroKeyword +^/winded+
" エモート: /aback サブコマンド仰天する
syntax match FFXIVMacroKeyword +^/aback+
" エモート: /greet サブコマンド挨拶する
syntax match FFXIVMacroKeyword +^/greet+
" エモート: /yoldance サブコマンドヨルダンスを踊る
syntax match FFXIVMacroKeyword +^/yoldance+
" エモート: /splash サブコマンド水をかける
syntax match FFXIVMacroKeyword +^/splash+
" エモート: /sweat サブコマンド暑がる
syntax match FFXIVMacroKeyword +^/sweat+
" エモート: /shiver サブコマンド寒がる
syntax match FFXIVMacroKeyword +^/shiver+
" エモート: /elucidate サブコマンド説明する
syntax match FFXIVMacroKeyword +^/elucidate+
" エモート: /hum サブコマンド鼻歌を歌う
syntax match FFXIVMacroKeyword +^/hum+
" エモート: /confirm サブコマンド確認する
syntax match FFXIVMacroKeyword +^/confirm+
" エモート: /scheme サブコマンド企みを話す
syntax match FFXIVMacroKeyword +^/scheme+
" エモート: /reprimand サブコマンド注意をする
syntax match FFXIVMacroKeyword +^/reprimand+
" エモート: /bombdance サブコマンドボム踊りを踊る
syntax match FFXIVMacroKeyword +^/bombdance+
" エモート: /eureka サブコマンド閃く
syntax match FFXIVMacroKeyword +^/eureka+
" エモート: /rangerposered1(/rposered1,/rangerpose1r,/rpose1r) サブコマンド戦士の演武：壱をする
syntax match FFXIVMacroKeyword +^/rangerposered1+
" エモート: /rangerposered2(/rposered2,/rangerpose1l,/rpose1l) サブコマンド戦士の演武：壱ノ裏をする
syntax match FFXIVMacroKeyword +^/rangerposered2+
" エモート: /rangerposeblack1(/rposeblack1,/rangerpose2r,/rpose2r) サブコマンド戦士の演武：弐をする
syntax match FFXIVMacroKeyword +^/rangerposeblack1+
" エモート: /rangerposeblack2(/rposeblack2,/rangerpose2l,/rpose2l) サブコマンド戦士の演武：弐ノ裏をする
syntax match FFXIVMacroKeyword +^/rangerposeblack2+
" エモート: /rangerposeyellow1(/rposeyellow1,/rangerpose3r,/rpose3r) サブコマンド戦士の演武：参をする
syntax match FFXIVMacroKeyword +^/rangerposeyellow1+
" エモート: /rangerposeyellow2(/rposeyellow2,/rangerpose3l,/rpose3l) サブコマンド戦士の演武：参ノ裏をする
syntax match FFXIVMacroKeyword +^/rangerposeyellow2+
" エモート: /dote サブコマンド愛を表現する
syntax match FFXIVMacroKeyword +^/dote+
" エモート: /songbird サブコマンド歌姫を真似る
syntax match FFXIVMacroKeyword +^/songbird+
" エモート: /cheeron サブコマンド声援（青）を送る
syntax match FFXIVMacroKeyword +^/cheeron+
" エモート: /cheerwave サブコマンド声援（黄）を送る
syntax match FFXIVMacroKeyword +^/cheerwave+
" エモート: /cheerjump サブコマンド声援（赤）を送る
syntax match FFXIVMacroKeyword +^/cheerjump+
" エモート: /fistbump(/fist) サブコマンド拳を突き出す
syntax match FFXIVMacroKeyword +^/fistbump+
" エモート: /backflip(/bflip) サブコマンド宙返りをする
syntax match FFXIVMacroKeyword +^/backflip+
" エモート: /easterngreeting(/egreeting) サブコマンド抱拳礼をする
syntax match FFXIVMacroKeyword +^/easterngreeting+
" エモート: /warmup(/easternstretch,/estretch) サブコマンドウォームアップをする
syntax match FFXIVMacroKeyword +^/warmup+
" エモート: /easterndance(/edance) サブコマンド東方の伝統舞踊を踊る
syntax match FFXIVMacroKeyword +^/easterndance+
" エモート: /crimsonlotus サブコマンド演舞をする
syntax match FFXIVMacroKeyword +^/crimsonlotus+
" エモート: /boxstep サブコマンドボックスステップを踏む
syntax match FFXIVMacroKeyword +^/boxstep+
" エモート: /sidestep サブコマンドサイドステップを踏む
syntax match FFXIVMacroKeyword +^/sidestep+
" エモート: /tomestone サブコマンドトームストーンを愛でる
syntax match FFXIVMacroKeyword +^/tomestone+
" エモート: /zantetsuken(/ztk) サブコマンド空間を斬り裂く
syntax match FFXIVMacroKeyword +^/zantetsuken+
" エモート: /iceheart サブコマンド氷とともに舞う
syntax match FFXIVMacroKeyword +^/iceheart+
" エモート: /megaflare サブコマンドメガフレアの如き光を放つ
syntax match FFXIVMacroKeyword +^/megaflare+
" エモート: /straightface(/straight) サブコマンド素の表情をする
syntax match FFXIVMacroKeyword +^/straightface+
" エモート: /smile サブコマンド微笑を浮かべる
syntax match FFXIVMacroKeyword +^/smile+
" エモート: /grin サブコマンド笑顔になる
syntax match FFXIVMacroKeyword +^/grin+
" エモート: /smirk サブコマンド自信に溢れる表情をする
syntax match FFXIVMacroKeyword +^/smirk+
" エモート: /taunt サブコマンド不敵な表情をする
syntax match FFXIVMacroKeyword +^/taunt+
" エモート: /shuteyes(/shut) サブコマンド目を閉ざす
syntax match FFXIVMacroKeyword +^/shuteyes+
" エモート: /sad サブコマンド泣顔になる
syntax match FFXIVMacroKeyword +^/sad+
" エモート: /scared(/fear) サブコマンド恐怖を感じた表情をする
syntax match FFXIVMacroKeyword +^/scared+
" エモート: /amazed(/awe) サブコマンド呆然とした表情をする
syntax match FFXIVMacroKeyword +^/amazed+
" エモート: /ouch(/ow) サブコマンド痛そうな表情をする
syntax match FFXIVMacroKeyword +^/ouch+
" エモート: /annoyed(/annoy) サブコマンド不機嫌そうな表情をする
syntax match FFXIVMacroKeyword +^/annoyed+
" エモート: /alert サブコマンド何かに気づいた表情をする
syntax match FFXIVMacroKeyword +^/alert+
" エモート: /worried(/worry) サブコマンド心配そうな表情をする
syntax match FFXIVMacroKeyword +^/worried+
" エモート: /rightwink(/wink) サブコマンドウィンクをする
syntax match FFXIVMacroKeyword +^/rightwink+
" エモート: /leftwink サブコマンドウィンクをする
syntax match FFXIVMacroKeyword +^/leftwink+
" エモート: /sneer サブコマンドあくどそうな表情をする
syntax match FFXIVMacroKeyword +^/sneer+
" エモート: /puckerup サブコマンド口をすぼめる
syntax match FFXIVMacroKeyword +^/puckerup+
" エモート: /concentrate サブコマンド真剣な表情をする
syntax match FFXIVMacroKeyword +^/concentrate+
" エモート: /disturbed サブコマンド困惑した表情をする
syntax match FFXIVMacroKeyword +^/disturbed+
" エモート: /simper サブコマンド柔和に微笑む
syntax match FFXIVMacroKeyword +^/simper+
" エモート: /beam サブコマンド満ち足りた表情をする
syntax match FFXIVMacroKeyword +^/beam+
" エモート: /biggrin サブコマンド破顔する表情をする
syntax match FFXIVMacroKeyword +^/biggrin+
" エモート: /reflect サブコマンド熟考する
syntax match FFXIVMacroKeyword +^/reflect+
" エモート: /furrow サブコマンド眉をひそめる
syntax match FFXIVMacroKeyword +^/furrow+
" エモート: /scoff サブコマンド苦笑いをする
syntax match FFXIVMacroKeyword +^/scoff+
" エモート: /ponder サブコマンド空想するような表情をする
syntax match FFXIVMacroKeyword +^/ponder+
" エモート: /endure サブコマンド忍耐するような表情をする
syntax match FFXIVMacroKeyword +^/endure+
" メニュー呼び出し: /actionlist(/alist)アクションリストのメニューを開く
syntax match FFXIVMacroKeyword +^/actionlist+
" メニュー呼び出し: /character(/gear)キャラクターのメニューを開く
syntax match FFXIVMacroKeyword +^/character+
" メニュー呼び出し: /armourychest(/armoury)アーマリーチェストのメニューを開く
syntax match FFXIVMacroKeyword +^/armourychest+
" メニュー呼び出し: /inventory(/bag)所持品のメニューを開く
syntax match FFXIVMacroKeyword +^/inventory+
" メニュー呼び出し: /chocobobag(/saddlebag)チョコボかばんのメニューを開く
syntax match FFXIVMacroKeyword +^/chocobobag+
" メニュー呼び出し: /buddy(/companion,/comp)バディのメニューを開く
syntax match FFXIVMacroKeyword +^/buddy+
" メニュー呼び出し: /mountlist(/mountguide)マウントリストのメニューを開く
syntax match FFXIVMacroKeyword +^/mountlist+
" メニュー呼び出し: /minionlist(/minionguide)ミニオンリストのメニューを開く
syntax match FFXIVMacroKeyword +^/minionlist+
" メニュー呼び出し: /pvpprofile(/pvppro)PvPプロフィールのメニューを開く
syntax match FFXIVMacroKeyword +^/pvpprofile+
" メニュー呼び出し: /goldsaucer(/saucer)ゴールドソーサーのメニューを開く
syntax match FFXIVMacroKeyword +^/goldsaucer+
" メニュー呼び出し: /achievementsアチーブメントリストのメニューを開く
syntax match FFXIVMacroKeyword +^/achievements+
" メニュー呼び出し: /currency通貨リストのメニューを開く
syntax match FFXIVMacroKeyword +^/currency+
" メニュー呼び出し: /recommendedおすすめコンテンツのメニューを開く
syntax match FFXIVMacroKeyword +^/recommended+
" メニュー呼び出し: /eventitem(/eitem,/keyitem,/kitem)イベントアイテムのメニューを開く
syntax match FFXIVMacroKeyword +^/eventitem+
" メニュー呼び出し: /journalジャーナルのメニューを開く
syntax match FFXIVMacroKeyword +^/journal+
" メニュー呼び出し: /contentsfinder(/cfinder,/dutyfinder,/dfinder)コンテンツファインダーのメニューを開く
syntax match FFXIVMacroKeyword +^/contentsfinder+
" メニュー呼び出し: /timersコンテンツ情報一覧のメニューを開く
syntax match FFXIVMacroKeyword +^/timers+
" メニュー呼び出し: /raidfinder(/rfinder)レイドファインダーのメニューを開く
syntax match FFXIVMacroKeyword +^/raidfinder+
" メニュー呼び出し: /replay(/record)コンテンツリプレイのメニューを開く
syntax match FFXIVMacroKeyword +^/replay+
" メニュー呼び出し: /contentskey(/generaldutykey,/gdutykey)コンテンツ汎用キーを実行する
syntax match FFXIVMacroKeyword +^/contentskey+
" メニュー呼び出し: /huntinglog(/hlog)討伐手帳のメニューを開く
syntax match FFXIVMacroKeyword +^/huntinglog+
" メニュー呼び出し: /sightseeinglog探検手帳のメニューを開く
syntax match FFXIVMacroKeyword +^/sightseeinglog+
" メニュー呼び出し: /craftinglog(/clog)製作手帳のメニューを開く
syntax match FFXIVMacroKeyword +^/craftinglog+
" メニュー呼び出し: /gatheringlog(/glog)採集手帳のメニューを開く
syntax match FFXIVMacroKeyword +^/gatheringlog+
" メニュー呼び出し: /fishinglog(/flog)釣り手帳のメニューを開く
syntax match FFXIVMacroKeyword +^/fishinglog+
" メニュー呼び出し: /fishguide(/fg)魚類図鑑のメニューを開く
syntax match FFXIVMacroKeyword +^/fishguide+
" メニュー呼び出し: /orchestrionオーケストリオン譜面帳を開く
syntax match FFXIVMacroKeyword +^/orchestrion+
" メニュー呼び出し: /challengelog攻略手帳のメニューを開く
syntax match FFXIVMacroKeyword +^/challengelog+
" メニュー呼び出し: /mapマップのメニューを開く
syntax match FFXIVMacroKeyword +^/map+
" メニュー呼び出し: /teleportテレポのメニューを開く
syntax match FFXIVMacroKeyword +^/teleport+
" メニュー呼び出し: /returnデジョンのメニューを開く
syntax match FFXIVMacroKeyword +^/return+
" メニュー呼び出し: /aethercurrent(/acurrent)風脈の泉交感情報のメニューを開く
syntax match FFXIVMacroKeyword +^/aethercurrent+
" メニュー呼び出し: /mountspeedマウントスピードのメニューを開く
syntax match FFXIVMacroKeyword +^/mountspeed+
" メニュー呼び出し: /partyfinder(/pfinder)パーティ募集のメニューを開く
syntax match FFXIVMacroKeyword +^/partyfinder+
" メニュー呼び出し: /emotelist(/elist)エモートリストのメニューを開く
syntax match FFXIVMacroKeyword +^/emotelist+
" メニュー呼び出し: /freecompanycmd(/fccmd)フリーカンパニーのメニューを開く
syntax match FFXIVMacroKeyword +^/freecompanycmd+
" メニュー呼び出し: /housing(/hou)ハウジングのメニューを開く
syntax match FFXIVMacroKeyword +^/housing+
" メニュー呼び出し: /pvpteamcmdPvPチームのメニューを開く
syntax match FFXIVMacroKeyword +^/pvpteamcmd+
" メニュー呼び出し: /linkshellcmd(/lcmd)リンクシェルのメニューを開く
syntax match FFXIVMacroKeyword +^/linkshellcmd+
" メニュー呼び出し: /cwlinkshellcmd(/cwlcmd)クロスワールドリンクシェルのメニューを開く
syntax match FFXIVMacroKeyword +^/cwlinkshellcmd+
" メニュー呼び出し: /contactlistコンタクトリストのメニューを開く
syntax match FFXIVMacroKeyword +^/contactlist+
" メニュー呼び出し: /supportdesk(/support)サポートデスクのメニューを開く
syntax match FFXIVMacroKeyword +^/supportdesk+
" メニュー呼び出し: /playguide(/pguide)プレイガイドメニューを開く
syntax match FFXIVMacroKeyword +^/playguide+
" メニュー呼び出し: /howtolist(/activehelp)HowToリストのメニューを開く
syntax match FFXIVMacroKeyword +^/howtolist+
" メニュー呼び出し: /characterconfig(/cconfig)キャラクターコンフィグのメニューを開く
syntax match FFXIVMacroKeyword +^/characterconfig+
" メニュー呼び出し: /systemconfig(/sconfig)システムコンフィグのメニューを開く
syntax match FFXIVMacroKeyword +^/systemconfig+
" メニュー呼び出し: /hudlayout サブコマンドHUDレイアウトに関する操作を行う
syntax match FFXIVMacroKeyword +^/hudlayout+
" メニュー呼び出し: /macrosマクロ管理のメニューを開く
syntax match FFXIVMacroKeyword +^/macros+
" メニュー呼び出し: /keybind(/keyconfig)キーバインドのメニューを開く
syntax match FFXIVMacroKeyword +^/keybind+
" メニュー呼び出し: /logcolor(/lcolor)ログカラー設定のメニューを開く
syntax match FFXIVMacroKeyword +^/logcolor+
" 代名詞: 現在のターゲットの名前を表示する
syntax match FFXIVMacroKeyword +^<t>,<target>+

highlight link FFXIVMacroKeyword Keyword
highlight link FFXIVComment Comment
