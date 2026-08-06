.class public Lcom/perm/kate/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# instance fields
.field aboutClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field audioCacheDirClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private audio_input:Landroid/widget/EditText;

.field private backgroundListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field bannedNewsClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private birthdaysChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private blackListClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private blockPasswordClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private card_style_news:Landroid/preference/CheckBoxPreference;

.field private changeHiddenMessagesPasswordListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private changePasswordClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private chatBackgroundListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field clearDataCacheClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field clearFileCacheClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private colors_reset_onPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private count:I

.field custom_theme_onPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field dashLinksClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private deprecatedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private deprecatedListener1:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private deprecatedListener2:Landroid/preference/Preference$OnPreferenceChangeListener;

.field faqClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private firstTabChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field general_colors_ChangedListener:Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;

.field groupClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field handler:Landroid/os/Handler;

.field imageCacheSizeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private imagesChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private intervalChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private key_custom_theme_colors:Landroid/preference/PreferenceScreen;

.field private key_hd_quality_videoChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field key_theme_general_color1:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

.field key_theme_general_color2:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

.field ledColorClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field logClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field longPollRunnavle:Ljava/lang/Runnable;

.field private long_pullChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private musicTimerListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private newsFilterChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field nightThemeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private night_endClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private night_startClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private notify_ringtone:Landroid/preference/RingtonePreference;

.field private notify_sound:Landroid/preference/CheckBoxPreference;

.field private notify_soundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private notify_sound_default:Landroid/preference/CheckBoxPreference;

.field private notify_sound_defaultChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private oldStyleNewsChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private old_style_news:Landroid/preference/CheckBoxPreference;

.field onSendEnterClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private onlineChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field photoSaveDirClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private photo_input:Landroid/widget/EditText;

.field private popupReplyChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private privacySettingsClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field pushChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field reformalClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private roundAvaChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field runningNotificationChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private secret2_count:I

.field private silence_mode:Landroid/preference/Preference;

.field private silentModeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private sleep_mode_end:Landroid/preference/Preference;

.field private sleep_mode_endClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private sleep_mode_start:Landroid/preference/Preference;

.field private sleep_mode_startClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private spamNewsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private spamNewsWordsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field syncClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field themeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private updateChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field updateClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field videoCacheDirClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private video_input:Landroid/widget/EditText;

.field private wideAvaChange:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 333
    new-instance v0, Lcom/perm/kate/Settings$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$1;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->popupReplyChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 344
    new-instance v0, Lcom/perm/kate/Settings$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$2;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->oldStyleNewsChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 358
    new-instance v0, Lcom/perm/kate/Settings$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$3;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->notify_soundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 367
    new-instance v0, Lcom/perm/kate/Settings$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$4;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->notify_sound_defaultChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 376
    new-instance v0, Lcom/perm/kate/Settings$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$5;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->intervalChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 392
    new-instance v0, Lcom/perm/kate/Settings$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$6;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->updateChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 406
    new-instance v0, Lcom/perm/kate/Settings$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$7;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->imagesChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 418
    new-instance v0, Lcom/perm/kate/Settings$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$8;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->firstTabChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 428
    new-instance v0, Lcom/perm/kate/Settings$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$9;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->long_pullChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 438
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/Settings;->handler:Landroid/os/Handler;

    .line 439
    new-instance v0, Lcom/perm/kate/Settings$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$10;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->longPollRunnavle:Ljava/lang/Runnable;

    .line 447
    new-instance v0, Lcom/perm/kate/Settings$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$11;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->newsFilterChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 455
    new-instance v0, Lcom/perm/kate/Settings$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$12;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->onlineChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 479
    new-instance v0, Lcom/perm/kate/Settings$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$13;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->key_hd_quality_videoChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 507
    new-instance v0, Lcom/perm/kate/Settings$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$14;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->syncClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 515
    new-instance v0, Lcom/perm/kate/Settings$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$15;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->themeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 540
    new-instance v0, Lcom/perm/kate/Settings$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$16;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->birthdaysChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 560
    new-instance v0, Lcom/perm/kate/Settings$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$17;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 568
    new-instance v0, Lcom/perm/kate/Settings$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$18;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->pushChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 613
    new-instance v0, Lcom/perm/kate/Settings$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$20;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->clearFileCacheClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 633
    new-instance v0, Lcom/perm/kate/Settings$21;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$21;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->aboutClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 670
    iput v1, p0, Lcom/perm/kate/Settings;->count:I

    .line 735
    new-instance v0, Lcom/perm/kate/Settings$24;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$24;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->blockPasswordClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 745
    new-instance v0, Lcom/perm/kate/Settings$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$25;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->clearDataCacheClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 772
    new-instance v0, Lcom/perm/kate/Settings$26;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$26;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->bannedNewsClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 781
    iput v1, p0, Lcom/perm/kate/Settings;->secret2_count:I

    .line 793
    new-instance v0, Lcom/perm/kate/Settings$27;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$27;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->onSendEnterClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 801
    new-instance v0, Lcom/perm/kate/Settings$28;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$28;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->sleep_mode_startClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 819
    new-instance v0, Lcom/perm/kate/Settings$29;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$29;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->sleep_mode_endClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 837
    new-instance v0, Lcom/perm/kate/Settings$30;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$30;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->groupClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 847
    new-instance v0, Lcom/perm/kate/Settings$31;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$31;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->faqClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 855
    new-instance v0, Lcom/perm/kate/Settings$32;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$32;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->reformalClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 863
    new-instance v0, Lcom/perm/kate/Settings$33;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$33;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->logClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 877
    new-instance v0, Lcom/perm/kate/Settings$34;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$34;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->ledColorClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 952
    new-instance v0, Lcom/perm/kate/Settings$35;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$35;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->photoSaveDirClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 999
    new-instance v0, Lcom/perm/kate/Settings$36;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$36;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->audioCacheDirClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1049
    new-instance v0, Lcom/perm/kate/Settings$37;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$37;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->videoCacheDirClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1098
    new-instance v0, Lcom/perm/kate/Settings$38;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$38;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->runningNotificationChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1110
    new-instance v0, Lcom/perm/kate/Settings$39;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$39;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->custom_theme_onPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1126
    new-instance v0, Lcom/perm/kate/Settings$40;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$40;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->general_colors_ChangedListener:Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;

    .line 1155
    new-instance v0, Lcom/perm/kate/Settings$41;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$41;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->colors_reset_onPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1167
    new-instance v0, Lcom/perm/kate/Settings$42;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$42;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->chatBackgroundListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1186
    new-instance v0, Lcom/perm/kate/Settings$43;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$43;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->backgroundListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1205
    new-instance v0, Lcom/perm/kate/Settings$44;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$44;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->changePasswordClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1215
    new-instance v0, Lcom/perm/kate/Settings$45;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$45;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->blackListClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1226
    new-instance v0, Lcom/perm/kate/Settings$46;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$46;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->silentModeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1276
    new-instance v0, Lcom/perm/kate/Settings$48;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$48;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->privacySettingsClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1286
    new-instance v0, Lcom/perm/kate/Settings$49;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$49;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->roundAvaChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1294
    new-instance v0, Lcom/perm/kate/Settings$50;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$50;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->wideAvaChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1304
    new-instance v0, Lcom/perm/kate/Settings$51;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$51;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->updateClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1312
    new-instance v0, Lcom/perm/kate/Settings$52;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$52;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->deprecatedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1321
    new-instance v0, Lcom/perm/kate/Settings$53;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$53;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->deprecatedListener1:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1330
    new-instance v0, Lcom/perm/kate/Settings$54;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$54;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->deprecatedListener2:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1346
    new-instance v0, Lcom/perm/kate/Settings$55;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$55;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->imageCacheSizeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1380
    new-instance v0, Lcom/perm/kate/Settings$56;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$56;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->dashLinksClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1388
    new-instance v0, Lcom/perm/kate/Settings$57;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$57;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->spamNewsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1396
    new-instance v0, Lcom/perm/kate/Settings$58;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$58;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->spamNewsWordsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1404
    new-instance v0, Lcom/perm/kate/Settings$59;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$59;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->nightThemeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1414
    new-instance v0, Lcom/perm/kate/Settings$60;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$60;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->night_startClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1432
    new-instance v0, Lcom/perm/kate/Settings$61;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$61;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->night_endClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1450
    new-instance v0, Lcom/perm/kate/Settings$62;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$62;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->musicTimerListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1463
    new-instance v0, Lcom/perm/kate/Settings$63;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$63;-><init>(Lcom/perm/kate/Settings;)V

    iput-object v0, p0, Lcom/perm/kate/Settings;->changeHiddenMessagesPasswordListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private aboutClick()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 649
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030019

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 651
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0e0062

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 652
    .local v1, "textView":Landroid/widget/TextView;
    const v4, 0x7f070447

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/perm/kate/Helper;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/perm/kate/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    const v4, 0x7f0e0063

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 655
    .local v0, "privacyView":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<a href=\"http://katemobile.ru/privacy.html\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f07038b

    invoke-virtual {p0, v5}, Lcom/perm/kate/Settings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</a>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 657
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 658
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070334

    .line 659
    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 660
    .local v3, "winAlert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 661
    new-instance v4, Lcom/perm/kate/Settings$22;

    invoke-direct {v4, p0}, Lcom/perm/kate/Settings$22;-><init>(Lcom/perm/kate/Settings;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    const-string v4, "Kate.Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/perm/kate/Helper;->getSigHash()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/Settings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/perm/kate/Settings;->setEnabledCardStyleNews(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->displayDeprecatedDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->clickEasterEgg()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->clickEasterEgg2()V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/Settings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/perm/kate/Settings;->sleep_mode_start:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/Settings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/perm/kate/Settings;->sleep_mode_end:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/perm/kate/Settings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/perm/kate/Settings;->photo_input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/perm/kate/Settings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/perm/kate/Settings;->photo_input:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/perm/kate/Settings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/perm/kate/Settings;->audio_input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/perm/kate/Settings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/perm/kate/Settings;->audio_input:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/perm/kate/Settings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/perm/kate/Settings;->video_input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/perm/kate/Settings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/perm/kate/Settings;->video_input:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->setGeneralColorValues()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->getGeneralColorValues()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->resetSilentMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/Settings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/perm/kate/Settings;->notify_sound_default:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->showSilenceDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/Settings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/perm/kate/Settings;->startSilentMode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/Settings;)Landroid/preference/RingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/perm/kate/Settings;->notify_ringtone:Landroid/preference/RingtonePreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/Settings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/perm/kate/Settings;->notify_sound:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->displayRestartDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->updateEnabledThemeGeneralColor2()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->turnPushOn()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->turnPushOff()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/perm/kate/Settings;->aboutClick()V

    return-void
.end method

.method private clickEasterEgg()V
    .locals 2

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/perm/kate/Settings;->showLeaks()V

    .line 674
    iget v0, p0, Lcom/perm/kate/Settings;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perm/kate/Settings;->count:I

    .line 675
    iget v0, p0, Lcom/perm/kate/Settings;->count:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 676
    const v0, 0x7f0704a2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 677
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perm/kate/ProfileFragment;->showNewMessage(Ljava/lang/String;Landroid/app/Activity;)V

    .line 678
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/Settings;->count:I

    .line 680
    :cond_0
    return-void
.end method

.method private clickEasterEgg2()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 783
    iget v1, p0, Lcom/perm/kate/Settings;->secret2_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/perm/kate/Settings;->secret2_count:I

    .line 784
    iget v1, p0, Lcom/perm/kate/Settings;->secret2_count:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_0

    .line 785
    invoke-static {p0}, Lcom/perm/kate/Helper;->footerAddButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 786
    .local v0, "enabled":Z
    if-nez v0, :cond_1

    move v0, v2

    .line 787
    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x7f0704ae

    :goto_1
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 788
    invoke-static {p0, v0}, Lcom/perm/kate/Helper;->setFooterAddButtonEnabled(Landroid/content/Context;Z)V

    .line 789
    iput v3, p0, Lcom/perm/kate/Settings;->secret2_count:I

    .line 791
    .end local v0    # "enabled":Z
    :cond_0
    return-void

    .restart local v0    # "enabled":Z
    :cond_1
    move v0, v3

    .line 786
    goto :goto_0

    .line 787
    :cond_2
    const v1, 0x7f0704af

    goto :goto_1
.end method

.method private displayDeprecatedDialog()V
    .locals 3

    .prologue
    .line 1340
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07034d

    .line 1341
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070334

    const/4 v2, 0x0

    .line 1342
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1343
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1344
    return-void
.end method

.method private displayRestartDialog()V
    .locals 3

    .prologue
    .line 504
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070454

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070334

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 505
    return-void
.end method

.method private getGeneralColorValues()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1138
    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getEditableColorCount(I)I

    move-result v1

    new-array v0, v1, [I

    .line 1139
    .local v0, "colors":[I
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perm/kate/Settings;->key_theme_general_color1:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    invoke-virtual {v2}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 1140
    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/perm/kate/Settings;->key_theme_general_color2:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    invoke-virtual {v1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->getValue()I

    move-result v1

    aput v1, v0, v3

    .line 1142
    :cond_0
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/perm/kate/theme/ColorTheme;->setColors([I)V

    .line 1143
    return-void
.end method

.method public static getLedColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v0, -0xf59b5c

    .line 891
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f07053d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0xf59b5c

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 894
    :goto_0
    return v0

    .line 892
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private resetSilentMode()V
    .locals 2

    .prologue
    .line 1271
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/perm/utils/SilentMode;->saveSilentValue(J)V

    .line 1272
    iget-object v0, p0, Lcom/perm/kate/Settings;->silence_mode:Landroid/preference/Preference;

    invoke-static {}, Lcom/perm/utils/SilentMode;->getSilentSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1273
    return-void
.end method

.method private setEnabledCardStyleNews(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 355
    iget-object v1, p0, Lcom/perm/kate/Settings;->card_style_news:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 356
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setGeneralColorValues()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1146
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    .line 1147
    .local v0, "colors":[I
    iget-object v1, p0, Lcom/perm/kate/Settings;->key_theme_general_color1:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->forceSetValue(I)V

    .line 1148
    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/perm/kate/Settings;->key_theme_general_color2:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->forceSetValue(I)V

    .line 1153
    :goto_0
    return-void

    .line 1151
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/Settings;->key_theme_general_color2:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->forceSetValue(I)V

    goto :goto_0
.end method

.method private setLedColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 898
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f07053d

    invoke-virtual {p0, v1}, Lcom/perm/kate/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 899
    return-void
.end method

.method private showLeaks()V
    .locals 4

    .prologue
    .line 683
    sget-boolean v0, Lcom/perm/kate/KApplication;->is_dev:Z

    if-nez v0, :cond_0

    .line 733
    :goto_0
    return-void

    .line 685
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/perm/kate/Settings$23;

    invoke-direct {v1, p0}, Lcom/perm/kate/Settings$23;-><init>(Lcom/perm/kate/Settings;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showSilenceDialog()V
    .locals 4

    .prologue
    .line 1238
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 1239
    .local v0, "menuItems":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    const v3, 0x7f070423

    invoke-virtual {p0, v3}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1240
    const/4 v2, 0x1

    const v3, 0x7f070424

    invoke-virtual {p0, v3}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1241
    const/4 v2, 0x2

    const v3, 0x7f070425

    invoke-virtual {p0, v3}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1242
    const/4 v2, 0x3

    const v3, 0x7f070426

    invoke-virtual {p0, v3}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1243
    const/4 v2, 0x4

    const v3, 0x7f070427

    invoke-virtual {p0, v3}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1244
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/perm/kate/Settings$47;

    invoke-direct {v3, p0}, Lcom/perm/kate/Settings$47;-><init>(Lcom/perm/kate/Settings;)V

    .line 1245
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1261
    .local v1, "winAlert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1262
    return-void
.end method

.method private startSilentMode(I)V
    .locals 6
    .param p1, "seconds"    # I

    .prologue
    .line 1265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 v4, p1, 0x3e8

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 1266
    .local v0, "value":J
    invoke-static {v0, v1}, Lcom/perm/utils/SilentMode;->saveSilentValue(J)V

    .line 1267
    iget-object v2, p0, Lcom/perm/kate/Settings;->silence_mode:Landroid/preference/Preference;

    invoke-static {}, Lcom/perm/utils/SilentMode;->getSilentSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1268
    return-void
.end method

.method private turnPushOff()V
    .locals 1

    .prologue
    .line 587
    new-instance v0, Lcom/perm/kate/Settings$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$19;-><init>(Lcom/perm/kate/Settings;)V

    .line 602
    invoke-virtual {v0}, Lcom/perm/kate/Settings$19;->start()V

    .line 603
    invoke-static {p0}, Lcom/perm/kate/push/Push;->unregister(Landroid/content/Context;)V

    .line 604
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/perm/kate/push/Push;->gotNewToken(Ljava/lang/String;)V

    .line 605
    invoke-static {}, Lcom/perm/kate/push/Push;->resetRetryInterval()V

    .line 606
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->cancelRetry(Landroid/content/Context;)V

    .line 607
    return-void
.end method

.method private turnPushOn()V
    .locals 0

    .prologue
    .line 610
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->startService(Landroid/content/Context;)V

    .line 611
    return-void
.end method

.method private updateEnabledThemeGeneralColor2()V
    .locals 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/perm/kate/Settings;->key_theme_general_color2:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/perm/kate/Settings;->key_theme_general_color2:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v1}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->setEnabled(Z)V

    .line 1124
    :cond_0
    return-void
.end method

.method public static upgradeZoomButtonsKey(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1369
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1370
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    const-string v3, "key_show_zoom_buttons"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1371
    const-string v3, "key_show_zoom_buttons"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1372
    .local v2, "value":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1373
    .local v1, "show_zoom":Z
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_show_zoom_buttons"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1374
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key2_show_zoom_buttons"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1375
    const/4 v3, 0x1

    .line 1377
    .end local v1    # "show_zoom":Z
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    .line 903
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 905
    const/16 v6, 0x7d5

    if-ne p1, v6, :cond_0

    if-ne p2, v9, :cond_0

    .line 906
    :try_start_0
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v1

    .line 907
    .local v1, "colors":[I
    const-string v6, "com.perm.kate.color_selected"

    const/4 v7, 0x0

    aget v7, v1, v7

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 908
    .local v0, "color":I
    const-string v6, "com.perm.kate.key_preference"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 909
    .local v2, "key_preference":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 910
    invoke-virtual {p0, v2}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    .line 911
    .local v3, "key_theme_general_color":Lcom/perm/kate/color_picker/widget/ColorPickerPreference;
    invoke-virtual {v3, v0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->onSettingsActivityResult(I)V

    .line 914
    .end local v0    # "color":I
    .end local v1    # "colors":[I
    .end local v2    # "key_preference":Ljava/lang/String;
    .end local v3    # "key_theme_general_color":Lcom/perm/kate/color_picker/widget/ColorPickerPreference;
    :cond_0
    const/16 v6, 0x7d3

    if-ne p1, v6, :cond_1

    if-ne p2, v9, :cond_1

    .line 915
    const-string v6, "com.perm.kate.color_selected"

    const v7, -0xf59b5c

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 916
    .restart local v0    # "color":I
    invoke-direct {p0, v0}, Lcom/perm/kate/Settings;->setLedColor(I)V

    .line 918
    .end local v0    # "color":I
    :cond_1
    const/16 v6, 0x7d4

    if-ne p1, v6, :cond_2

    if-ne p2, v9, :cond_2

    .line 919
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/perm/kate/MessageThreadBackground;->makeLocalCopy(Landroid/net/Uri;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v5

    .line 920
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 921
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key_chat_background"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 922
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 923
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    iget-object v6, v6, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    const-string v7, "[message_thread_background]"

    invoke-virtual {v6, v7}, Lcom/perm/utils/MemoryCache;->remove(Ljava/lang/String;)V

    .line 925
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    const/16 v6, 0x7d6

    if-ne p1, v6, :cond_3

    if-ne p2, v9, :cond_3

    .line 926
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/perm/kate/AppBackground;->makeLocalCopy(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 927
    .restart local v5    # "uri":Landroid/net/Uri;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 928
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key_background"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 929
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 930
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    iget-object v6, v6, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    const-string v7, "[app_background]"

    invoke-virtual {v6, v7}, Lcom/perm/utils/MemoryCache;->remove(Ljava/lang/String;)V

    .line 932
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    const/16 v6, 0x7db

    if-ne p1, v6, :cond_4

    if-ne p2, v9, :cond_4

    .line 933
    iget-object v6, p0, Lcom/perm/kate/Settings;->audio_input:Landroid/widget/EditText;

    if-eqz v6, :cond_4

    .line 934
    iget-object v6, p0, Lcom/perm/kate/Settings;->audio_input:Landroid/widget/EditText;

    const-string v7, "path"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 936
    :cond_4
    const/16 v6, 0x7dc

    if-ne p1, v6, :cond_5

    if-ne p2, v9, :cond_5

    .line 937
    iget-object v6, p0, Lcom/perm/kate/Settings;->photo_input:Landroid/widget/EditText;

    if-eqz v6, :cond_5

    .line 938
    iget-object v6, p0, Lcom/perm/kate/Settings;->photo_input:Landroid/widget/EditText;

    const-string v7, "path"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 940
    :cond_5
    const/16 v6, 0x7dd

    if-ne p1, v6, :cond_6

    if-ne p2, v9, :cond_6

    .line 941
    iget-object v6, p0, Lcom/perm/kate/Settings;->video_input:Landroid/widget/EditText;

    if-eqz v6, :cond_6

    .line 942
    iget-object v6, p0, Lcom/perm/kate/Settings;->video_input:Landroid/widget/EditText;

    const-string v7, "path"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :cond_6
    :goto_0
    return-void

    .line 944
    :catch_0
    move-exception v4

    .line 945
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 946
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 37
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    sget v33, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v34, 0x15

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_8

    .line 84
    const v33, 0x1030224

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->setTheme(I)V

    .line 91
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v33, 0x7f050003

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->addPreferencesFromResource(I)V

    .line 93
    const v33, 0x7f07053b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/ListPreference;

    .line 94
    .local v32, "timers":Landroid/preference/ListPreference;
    invoke-virtual/range {v32 .. v32}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->intervalChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    const v33, 0x7f07052b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 98
    .local v5, "autoupdate":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->updateChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const v33, 0x7f070532

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 101
    .local v12, "images":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->imagesChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    const v33, 0x7f07052e

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    .line 104
    .local v8, "first_tab":Landroid/preference/ListPreference;
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->firstTabChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const v33, 0x7f070539

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    .line 109
    .local v24, "news_post":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->newsFilterChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    const v33, 0x7f070537

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/CheckBoxPreference;

    .line 111
    .local v22, "news_photo":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->newsFilterChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    const v33, 0x7f070538

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    .line 113
    .local v23, "news_photo_tag":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->newsFilterChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    const v33, 0x7f070535

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    .line 115
    .local v20, "news_friend":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->newsFilterChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    const v33, 0x7f070536

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    .line 117
    .local v21, "news_note":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->newsFilterChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    const v33, 0x7f070533

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    .line 120
    .local v18, "long_pull":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->long_pullChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    const v33, 0x7f070546

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/ListPreference;

    .line 123
    .local v27, "online":Landroid/preference/ListPreference;
    invoke-virtual/range {v27 .. v27}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->onlineChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    const v33, 0x7f070531

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    .line 127
    .local v15, "key_hd_quality_video":Landroid/preference/ListPreference;
    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->key_hd_quality_videoChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    const-string v33, "sync_contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->syncClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    const-string v33, "clear_file_cache"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->clearFileCacheClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 134
    const-string v33, "key_theme"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/ListPreference;

    .line 135
    .local v31, "theme":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->themeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    invoke-virtual/range {v31 .. v31}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    const v33, 0x7f07053a

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    .line 139
    .local v26, "notify_birthdays":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->birthdaysChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    const v33, 0x7f07052f

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 142
    .local v9, "font_size":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    const v33, 0x7f07054b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    .line 145
    .local v29, "push":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->pushChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    const-string v33, "about"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 148
    .local v3, "about":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->aboutClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 150
    const-string v33, "key_profile_tab"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    .line 151
    .local v28, "profile":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    sget-boolean v33, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v33, :cond_0

    .line 153
    const/16 v33, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 155
    :cond_0
    const-string v33, "change_block_password"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->blockPasswordClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    const-string v33, "clear_data_cache"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->clearDataCacheClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 160
    const-string v33, "key_banned_news"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->bannedNewsClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 162
    const-string v33, "key_send_on_enter"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->onSendEnterClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    const v33, 0x7f070542

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/Settings;->notify_sound:Landroid/preference/CheckBoxPreference;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->notify_sound:Landroid/preference/CheckBoxPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->notify_soundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    const v33, 0x7f070543

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/Settings;->notify_sound_default:Landroid/preference/CheckBoxPreference;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->notify_sound_default:Landroid/preference/CheckBoxPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->notify_sound_defaultChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    const v33, 0x7f070541

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/RingtonePreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/Settings;->notify_ringtone:Landroid/preference/RingtonePreference;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->notify_ringtone:Landroid/preference/RingtonePreference;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->notify_sound:Landroid/preference/CheckBoxPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v33

    if-eqz v33, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->notify_sound_default:Landroid/preference/CheckBoxPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v33

    if-nez v33, :cond_a

    const/16 v33, 0x1

    :goto_1
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const v34, 0x7f07054e

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/Settings;->sleep_mode_start:Landroid/preference/Preference;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->sleep_mode_start:Landroid/preference/Preference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->sleep_mode_startClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->sleep_mode_start:Landroid/preference/Preference;

    move-object/from16 v33, v0

    invoke-static/range {p0 .. p0}, Lcom/perm/utils/SleepModeHelper;->getStartTime(Landroid/content/Context;)[I

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/perm/utils/SleepModeHelper;->getStringTime([I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const v34, 0x7f07054d

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/Settings;->sleep_mode_end:Landroid/preference/Preference;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->sleep_mode_end:Landroid/preference/Preference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->sleep_mode_endClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->sleep_mode_end:Landroid/preference/Preference;

    move-object/from16 v33, v0

    invoke-static/range {p0 .. p0}, Lcom/perm/utils/SleepModeHelper;->getEndTime(Landroid/content/Context;)[I

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/perm/utils/SleepModeHelper;->getStringTime([I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    sget-boolean v33, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v33, :cond_1

    .line 180
    const-string v33, "key_main_tabs"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 183
    :cond_1
    const-string v33, "key_news_tab"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    const v33, 0x7f070530

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    const-string v33, "key_show_tabs"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    const-string v33, "feedback_group"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->groupClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    const-string v33, "feedback_faq"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->faqClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 195
    const-string v33, "feedback_reformal"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->reformalClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 198
    const-string v33, "feedback_log"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->logClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    const v33, 0x7f07053d

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->ledColorClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 204
    const-string v33, "photo_save_dir_virtual"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->photoSaveDirClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 207
    const-string v33, "audio_cache_dir_virtual"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->audioCacheDirClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 210
    const-string v33, "video_cache_dir_virtual"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->videoCacheDirClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 213
    const-string v33, "key_force_phone_ui"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 214
    .local v10, "force_phone_ui":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    sget-boolean v33, Lcom/perm/kate/KApplication;->isHoneycomb:Z

    if-eqz v33, :cond_b

    sget-boolean v33, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v33, :cond_b

    const/4 v7, 0x1

    .line 216
    .local v7, "can_display_tablet_ui":Z
    :goto_2
    if-nez v7, :cond_2

    .line 217
    const-string v33, "key_ui"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    :cond_2
    const-string v33, "running_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    .line 220
    .local v30, "runningNotification":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->runningNotificationChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    const v33, 0x7f070545

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/Settings;->old_style_news:Landroid/preference/CheckBoxPreference;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->old_style_news:Landroid/preference/CheckBoxPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->oldStyleNewsChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 224
    const v33, 0x7f07052c

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/Settings;->card_style_news:Landroid/preference/CheckBoxPreference;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->card_style_news:Landroid/preference/CheckBoxPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->old_style_news:Landroid/preference/CheckBoxPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/perm/kate/Settings;->setEnabledCardStyleNews(Z)V

    .line 227
    const-string v33, "key_custom_theme_colors"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/Settings;->key_custom_theme_colors:Landroid/preference/PreferenceScreen;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->key_custom_theme_colors:Landroid/preference/PreferenceScreen;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->custom_theme_onPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 229
    const-string v33, "key_custom_theme_colors_reset"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    .line 230
    .local v14, "key_custom_theme_colors_reset":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->colors_reset_onPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 233
    const-string v33, "key_language"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    const-string v33, "key_chat_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->chatBackgroundListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 238
    const-string v33, "key_theme_general_color1"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/Settings;->key_theme_general_color1:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->key_theme_general_color1:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->general_colors_ChangedListener:Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->setOnColorChangedListener(Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;)V

    .line 242
    sget v33, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v34, 0x15

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_c

    .line 243
    const-string v33, "key_customize_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceGroup;

    const-string v34, "headsup_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    :cond_3
    :goto_3
    sget v33, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v34, 0x13

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_4

    .line 252
    const-string v33, "key_ui"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceGroup;

    const-string v34, "translucent_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_4
    const-string v33, "key_theme_general_color2"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/Settings;->key_theme_general_color2:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->key_theme_general_color2:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->general_colors_ChangedListener:Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->setOnColorChangedListener(Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;)V

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/Settings;->updateEnabledThemeGeneralColor2()V

    .line 257
    const-string v33, "change_password"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->changePasswordClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 258
    const-string v33, "black_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->blackListClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 259
    const-string v33, "key_banned_news2"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->bannedNewsClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 261
    const-string v33, "key_silent_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/Settings;->silence_mode:Landroid/preference/Preference;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->silence_mode:Landroid/preference/Preference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->silentModeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->silence_mode:Landroid/preference/Preference;

    move-object/from16 v33, v0

    invoke-static {}, Lcom/perm/utils/SilentMode;->getSilentSummary()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    const-string v33, "key_privacy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->privacySettingsClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 267
    const-string v33, "key_round_ava"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->roundAvaChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    const-string v33, "key_wide_ava"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->wideAvaChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 271
    const-string v33, "key_update"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->updateClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 273
    const-string v33, "key_reverse_message_1"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->deprecatedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    const-string v33, "key_messages_reverse_1"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->deprecatedListener1:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 277
    const-string v33, "news_click_key_1"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->deprecatedListener2:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 279
    const-string v33, "key_messages_in_bubbles_1"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->deprecatedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 281
    const-string v33, "image_cache_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 282
    .local v6, "cacheSizePref":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->imageCacheSizeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/Settings;->upgradeZoomButtonsKey(Landroid/app/Activity;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 287
    const-string v33, "key2_show_zoom_buttons"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    .line 288
    .local v13, "key2_show_zoom_buttons":Landroid/preference/CheckBoxPreference;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 289
    .local v19, "mPrefs":Landroid/content/SharedPreferences;
    const-string v33, "key2_show_zoom_buttons"

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 292
    .end local v13    # "key2_show_zoom_buttons":Landroid/preference/CheckBoxPreference;
    .end local v19    # "mPrefs":Landroid/content/SharedPreferences;
    :cond_5
    sget-boolean v33, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-nez v33, :cond_d

    .line 293
    const-string v33, "dash_links"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->dashLinksClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 297
    :goto_4
    const-string v33, "ipv4"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    const-string v33, "key_hide_news_spam"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->spamNewsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 300
    const-string v33, "new_spam_words"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->spamNewsWordsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 302
    const-string v33, "key_night_theme"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    .line 303
    .local v25, "night_theme":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->nightThemeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 304
    invoke-virtual/range {v25 .. v25}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const-string v34, "key_night_start"

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 306
    .local v17, "key_night_start":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->night_startClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 307
    invoke-static/range {p0 .. p0}, Lcom/perm/utils/NightThemeHelper;->getStartTime(Landroid/content/Context;)[I

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/perm/utils/SleepModeHelper;->getStringTime([I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const-string v34, "key_night_end"

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 309
    .local v16, "key_night_end":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->night_endClick:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 310
    invoke-static/range {p0 .. p0}, Lcom/perm/utils/NightThemeHelper;->getEndTime(Landroid/content/Context;)[I

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/perm/utils/SleepModeHelper;->getStringTime([I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    const-string v33, "key_header_scroll"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 313
    .local v11, "header_scroll":Landroid/preference/Preference;
    sget v33, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v34, 0x15

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_e

    .line 314
    const-string v33, "key_news"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    :goto_5
    const-string v33, "key_audio_timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 319
    .local v4, "audio_timer":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->musicTimerListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 320
    invoke-static {}, Lcom/perm/utils/MusicTimer;->isTimerActive()Z

    move-result v33

    if-eqz v33, :cond_6

    .line 321
    const v33, 0x7f070043

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static {}, Lcom/perm/utils/MusicTimer;->getStopMinutes()I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    :cond_6
    const-string v33, "key_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->backgroundListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 327
    const-string v33, "hidden_mess_change_pass"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->changeHiddenMessagesPasswordListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 329
    sget v33, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_7

    .line 330
    const-string v33, "voice_quality"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 331
    :cond_7
    return-void

    .line 87
    .end local v3    # "about":Landroid/preference/Preference;
    .end local v4    # "audio_timer":Landroid/preference/Preference;
    .end local v5    # "autoupdate":Landroid/preference/Preference;
    .end local v6    # "cacheSizePref":Landroid/preference/ListPreference;
    .end local v7    # "can_display_tablet_ui":Z
    .end local v8    # "first_tab":Landroid/preference/ListPreference;
    .end local v9    # "font_size":Landroid/preference/Preference;
    .end local v10    # "force_phone_ui":Landroid/preference/Preference;
    .end local v11    # "header_scroll":Landroid/preference/Preference;
    .end local v12    # "images":Landroid/preference/Preference;
    .end local v14    # "key_custom_theme_colors_reset":Landroid/preference/PreferenceScreen;
    .end local v15    # "key_hd_quality_video":Landroid/preference/ListPreference;
    .end local v16    # "key_night_end":Landroid/preference/Preference;
    .end local v17    # "key_night_start":Landroid/preference/Preference;
    .end local v18    # "long_pull":Landroid/preference/ListPreference;
    .end local v20    # "news_friend":Landroid/preference/CheckBoxPreference;
    .end local v21    # "news_note":Landroid/preference/CheckBoxPreference;
    .end local v22    # "news_photo":Landroid/preference/CheckBoxPreference;
    .end local v23    # "news_photo_tag":Landroid/preference/CheckBoxPreference;
    .end local v24    # "news_post":Landroid/preference/CheckBoxPreference;
    .end local v25    # "night_theme":Landroid/preference/ListPreference;
    .end local v26    # "notify_birthdays":Landroid/preference/Preference;
    .end local v27    # "online":Landroid/preference/ListPreference;
    .end local v28    # "profile":Landroid/preference/Preference;
    .end local v29    # "push":Landroid/preference/Preference;
    .end local v30    # "runningNotification":Landroid/preference/Preference;
    .end local v31    # "theme":Landroid/preference/ListPreference;
    .end local v32    # "timers":Landroid/preference/ListPreference;
    :cond_8
    sget v33, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v34, 0xb

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_9

    .line 88
    const v33, 0x103006b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->setTheme(I)V

    goto/16 :goto_0

    .line 90
    :cond_9
    const v33, 0x1030008

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->setTheme(I)V

    goto/16 :goto_0

    .line 169
    .restart local v3    # "about":Landroid/preference/Preference;
    .restart local v5    # "autoupdate":Landroid/preference/Preference;
    .restart local v8    # "first_tab":Landroid/preference/ListPreference;
    .restart local v9    # "font_size":Landroid/preference/Preference;
    .restart local v12    # "images":Landroid/preference/Preference;
    .restart local v15    # "key_hd_quality_video":Landroid/preference/ListPreference;
    .restart local v18    # "long_pull":Landroid/preference/ListPreference;
    .restart local v20    # "news_friend":Landroid/preference/CheckBoxPreference;
    .restart local v21    # "news_note":Landroid/preference/CheckBoxPreference;
    .restart local v22    # "news_photo":Landroid/preference/CheckBoxPreference;
    .restart local v23    # "news_photo_tag":Landroid/preference/CheckBoxPreference;
    .restart local v24    # "news_post":Landroid/preference/CheckBoxPreference;
    .restart local v26    # "notify_birthdays":Landroid/preference/Preference;
    .restart local v27    # "online":Landroid/preference/ListPreference;
    .restart local v28    # "profile":Landroid/preference/Preference;
    .restart local v29    # "push":Landroid/preference/Preference;
    .restart local v31    # "theme":Landroid/preference/ListPreference;
    .restart local v32    # "timers":Landroid/preference/ListPreference;
    :cond_a
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 215
    .restart local v10    # "force_phone_ui":Landroid/preference/Preference;
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 245
    .restart local v7    # "can_display_tablet_ui":Z
    .restart local v14    # "key_custom_theme_colors_reset":Landroid/preference/PreferenceScreen;
    .restart local v30    # "runningNotification":Landroid/preference/Preference;
    :cond_c
    const-string v33, "key_popup_reply"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->popupReplyChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 246
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v33

    const-string v34, "key_popup_reply"

    const/16 v35, 0x1

    invoke-interface/range {v33 .. v35}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 247
    const-string v33, "headsup_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 295
    .restart local v6    # "cacheSizePref":Landroid/preference/ListPreference;
    :cond_d
    const-string v33, "dash_links"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 316
    .restart local v11    # "header_scroll":Landroid/preference/Preference;
    .restart local v16    # "key_night_end":Landroid/preference/Preference;
    .restart local v17    # "key_night_start":Landroid/preference/Preference;
    .restart local v25    # "night_theme":Landroid/preference/ListPreference;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Settings;->restartListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_5
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 491
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 492
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->increment()V

    .line 493
    const-string v0, "T7A4JA7UBXDKAV5DCANQ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 498
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 499
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->decrement()V

    .line 500
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 501
    return-void
.end method
