.class public Lcom/perm/kate/EditGroupActivity;
.super Lcom/perm/kate/BaseActivity;
.source "EditGroupActivity.java"


# instance fields
.field private address:Ljava/lang/String;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_public_date:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private cancel_ClickListener:Landroid/view/View$OnClickListener;

.field private category_list_cache:Ljava/util/HashMap;

.field private category_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private default_address:Ljava/lang/String;

.field private ed_description:Landroid/widget/EditText;

.field private ed_page_address:Landroid/widget/EditText;

.field private ed_page_web_site:Landroid/widget/EditText;

.field private ed_title:Landroid/widget/EditText;

.field private edit_callback:Lcom/perm/kate/session/Callback;

.field private ex_category_list_cache:Ljava/util/HashMap;

.field private fl_button_bg:Landroid/widget/FrameLayout;

.field private get_settings_callback:Lcom/perm/kate/session/Callback;

.field private group_id:J

.field private group_type:I

.field private gs:Lcom/perm/kate/api/GroupSettings;

.field private public_date:Ljava/util/Date;

.field private public_date_clickListener:Landroid/view/View$OnClickListener;

.field private public_date_str:Ljava/lang/String;

.field private save_ClickListener:Landroid/view/View$OnClickListener;

.field private sp_audios_flag:Landroid/widget/Spinner;

.field private sp_category:Landroid/widget/Spinner;

.field private sp_communities_access:Landroid/widget/Spinner;

.field private sp_community_subject:Landroid/widget/Spinner;

.field private sp_contacts_flag:Landroid/widget/Spinner;

.field private sp_docs_flag:Landroid/widget/Spinner;

.field private sp_events_access:Landroid/widget/Spinner;

.field private sp_events_flag:Landroid/widget/Spinner;

.field private sp_links_flag:Landroid/widget/Spinner;

.field private sp_materials_flag:Landroid/widget/Spinner;

.field private sp_photos_flag:Landroid/widget/Spinner;

.field private sp_places_flag:Landroid/widget/Spinner;

.field private sp_subcategory:Landroid/widget/Spinner;

.field private sp_topics_flag:Landroid/widget/Spinner;

.field private sp_videos_flag:Landroid/widget/Spinner;

.field private sp_wall_flag:Landroid/widget/Spinner;

.field private subcategory_list_cache:Ljava/util/HashMap;

.field private subject_list_cache:Ljava/util/HashMap;

.field private tv_category:Landroid/widget/TextView;

.field private tv_community_subject:Landroid/widget/TextView;

.field private tv_contacts_flag:Landroid/widget/TextView;

.field private tv_docs_flag:Landroid/widget/TextView;

.field private tv_events_flag:Landroid/widget/TextView;

.field private tv_links_flag:Landroid/widget/TextView;

.field private tv_materials_flag:Landroid/widget/TextView;

.field private tv_places_flag:Landroid/widget/TextView;

.field private tv_public_date:Landroid/widget/TextView;

.field private tv_subcategory:Landroid/widget/TextView;

.field private tv_wall_flag:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_cache:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->category_list_cache:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ex_category_list_cache:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->subcategory_list_cache:Ljava/util/HashMap;

    .line 177
    new-instance v0, Lcom/perm/kate/EditGroupActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupActivity$1;-><init>(Lcom/perm/kate/EditGroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->category_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 238
    new-instance v0, Lcom/perm/kate/EditGroupActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditGroupActivity$3;-><init>(Lcom/perm/kate/EditGroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->get_settings_callback:Lcom/perm/kate/session/Callback;

    .line 402
    new-instance v0, Lcom/perm/kate/EditGroupActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupActivity$5;-><init>(Lcom/perm/kate/EditGroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->save_ClickListener:Landroid/view/View$OnClickListener;

    .line 409
    new-instance v0, Lcom/perm/kate/EditGroupActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupActivity$6;-><init>(Lcom/perm/kate/EditGroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->cancel_ClickListener:Landroid/view/View$OnClickListener;

    .line 416
    new-instance v0, Lcom/perm/kate/EditGroupActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupActivity$7;-><init>(Lcom/perm/kate/EditGroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->public_date_clickListener:Landroid/view/View$OnClickListener;

    .line 549
    new-instance v0, Lcom/perm/kate/EditGroupActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditGroupActivity$9;-><init>(Lcom/perm/kate/EditGroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/EditGroupActivity;->category_list_cache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->displaySettings()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->saveSettingsGroup()V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/perm/kate/EditGroupActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/perm/kate/EditGroupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->updateButtonLabel()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/EditGroupActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/EditGroupActivity;->ex_category_list_cache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/EditGroupActivity;->subcategory_list_cache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/EditGroupActivity;->tv_subcategory:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/EditGroupActivity;->sp_subcategory:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/api/GroupSettings;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    return-object p0
.end method

.method static synthetic access$602(Lcom/perm/kate/EditGroupActivity;Lcom/perm/kate/api/GroupSettings;)Lcom/perm/kate/api/GroupSettings;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    return-object p1
.end method

.method static synthetic access$700(Lcom/perm/kate/EditGroupActivity;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/perm/kate/EditGroupActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/EditGroupActivity;->get_settings_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->displaySettingsInUiThread()V

    return-void
.end method

.method private displaySettings()V
    .locals 12

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    if-eqz v0, :cond_14

    .line 266
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->ed_title:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_description:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, v1, Lcom/perm/kate/api/GroupSettings;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_address:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, v1, Lcom/perm/kate/api/GroupSettings;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, v0, Lcom/perm/kate/api/GroupSettings;->address:Ljava/lang/String;

    iput-object v1, p0, Lcom/perm/kate/EditGroupActivity;->address:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_web_site:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->website:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 272
    iget v1, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 274
    :cond_0
    iget v0, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, v1, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 278
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x1090009

    const v3, 0x1090008

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->subject_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 279
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->subject_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v5

    new-array v0, v0, [Ljava/lang/String;

    const v6, 0x7f0f024f

    .line 280
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    .line 282
    iget-object v6, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v6, v6, Lcom/perm/kate/api/GroupSettings;->subject_list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/api/StrPair;

    .line 283
    iget-object v9, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_cache:Ljava/util/HashMap;

    iget-object v10, v8, Lcom/perm/kate/api/StrPair;->id:Ljava/lang/String;

    iget-object v11, v8, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v8, v8, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    aput-object v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 287
    :cond_2
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-direct {v6, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 288
    invoke-virtual {v6, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 289
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 291
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_cache:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v7, v7, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_cache:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v7, v7, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 293
    :goto_1
    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 294
    iget-object v6, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->public_category_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 298
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->public_category_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 300
    iget-object v6, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v6, v6, Lcom/perm/kate/api/GroupSettings;->public_category_list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/ExStrPair;

    .line 301
    iget-object v8, p0, Lcom/perm/kate/EditGroupActivity;->category_list_cache:Ljava/util/HashMap;

    iget-object v9, v7, Lcom/perm/kate/api/StrPair;->id:Ljava/lang/String;

    iget-object v10, v7, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v8, p0, Lcom/perm/kate/EditGroupActivity;->ex_category_list_cache:Ljava/util/HashMap;

    iget-object v9, v7, Lcom/perm/kate/api/StrPair;->id:Ljava/lang/String;

    iget-object v10, v7, Lcom/perm/kate/api/ExStrPair;->sublist:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v7, v7, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    aput-object v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 306
    :cond_5
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-direct {v4, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v4, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 308
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 310
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->category_list_cache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v2, v2, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 311
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->category_list_cache:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, v1, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 312
    :cond_6
    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 313
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 317
    :cond_7
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->wall:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 318
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_wall_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 319
    :cond_8
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->photos:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 320
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_photos_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 321
    :cond_9
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->video:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 322
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_videos_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 323
    :cond_a
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->audio:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 324
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_audios_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 325
    :cond_b
    iget v0, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-eq v0, v5, :cond_c

    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->docs:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 326
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_docs_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 327
    :cond_c
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->topics:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 328
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_topics_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 329
    :cond_d
    iget v0, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-eq v0, v5, :cond_e

    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->wiki:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 330
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_materials_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 331
    :cond_e
    iget v0, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-ne v0, v5, :cond_13

    .line 332
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->links:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 333
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_links_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 334
    :cond_f
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->events:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 335
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 336
    :cond_10
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->places:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 337
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_places_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 338
    :cond_11
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->contacts:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 339
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_contacts_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 340
    :cond_12
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v0, v0, Lcom/perm/kate/api/GroupSettings;->public_date:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 341
    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    .line 342
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->parsePublicDate()V

    .line 343
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->updateButtonLabel()V

    .line 349
    :cond_13
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->btn_save:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 351
    :cond_14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->onError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 353
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->onError()V

    .line 354
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 355
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private displaySettingsInUiThread()V
    .locals 1

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    new-instance v0, Lcom/perm/kate/EditGroupActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupActivity$4;-><init>(Lcom/perm/kate/EditGroupActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getGroupSettingsInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 230
    new-instance v0, Lcom/perm/kate/EditGroupActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupActivity$2;-><init>(Lcom/perm/kate/EditGroupActivity;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onError()V
    .locals 2

    const v0, 0x7f0f0528

    .line 398
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 399
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->btn_save:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private parsePublicDate()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "\\."

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 362
    aget-object v1, v0, v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 364
    :cond_0
    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 365
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->tryParsePublicDateWithoutYear()V

    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->tryParsePublicDate()V

    :cond_2
    :goto_0
    return-void
.end method

.method private prepareFieldsByType()V
    .locals 5

    .line 135
    iget v0, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 139
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_community_subject:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_docs_flag:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_docs_flag:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_materials_flag:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_materials_flag:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_category:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_links_flag:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_flag:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_places_flag:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_contacts_flag:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_links_flag:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_events_flag:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_places_flag:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_contacts_flag:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_wall_flag:Landroid/widget/TextView;

    const v1, 0x7f0f022e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    .line 163
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 164
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_wall_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 165
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f030016

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-direct {v4, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 168
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_photos_flag:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 169
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_videos_flag:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_audios_flag:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_topics_flag:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 172
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_public_date:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->fl_button_bg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private saveSettingsGroup()V
    .locals 7

    .line 459
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0f0537

    .line 461
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void

    .line 464
    :cond_0
    new-instance v1, Lcom/perm/kate/api/GroupSettings;

    invoke-direct {v1}, Lcom/perm/kate/api/GroupSettings;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    .line 465
    iput-object v0, v1, Lcom/perm/kate/api/GroupSettings;->title:Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_description:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/GroupSettings;->description:Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_address:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->default_address:Ljava/lang/String;

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 471
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iput-object v0, v1, Lcom/perm/kate/api/GroupSettings;->address:Ljava/lang/String;

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_web_site:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupSettings;->website:Ljava/lang/String;

    .line 473
    iget v0, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-nez v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 476
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    .line 478
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const-string v1, "0"

    const/4 v2, -0x1

    if-le v0, v2, :cond_7

    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 479
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 480
    iget-object v3, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_cache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-lez v3, :cond_6

    .line 481
    iget-object v3, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_cache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 482
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 483
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    goto :goto_1

    .line 488
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iput-object v1, v0, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    .line 490
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_wall_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_8

    .line 491
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v3, p0, Lcom/perm/kate/EditGroupActivity;->sp_wall_flag:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->wall:Ljava/lang/Integer;

    .line 492
    :cond_8
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_photos_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_9

    .line 493
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v3, p0, Lcom/perm/kate/EditGroupActivity;->sp_photos_flag:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->photos:Ljava/lang/Integer;

    .line 494
    :cond_9
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_videos_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_a

    .line 495
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v3, p0, Lcom/perm/kate/EditGroupActivity;->sp_videos_flag:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->video:Ljava/lang/Integer;

    .line 496
    :cond_a
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_audios_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_b

    .line 497
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v3, p0, Lcom/perm/kate/EditGroupActivity;->sp_audios_flag:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->audio:Ljava/lang/Integer;

    .line 498
    :cond_b
    iget v0, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_c

    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_docs_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_c

    .line 499
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_docs_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/GroupSettings;->docs:Ljava/lang/Integer;

    .line 500
    :cond_c
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_topics_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_d

    .line 501
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_topics_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/GroupSettings;->topics:Ljava/lang/Integer;

    .line 502
    :cond_d
    iget v0, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-eq v0, v3, :cond_e

    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_materials_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_e

    .line 503
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_materials_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/GroupSettings;->wiki:Ljava/lang/Integer;

    .line 504
    :cond_e
    iget v0, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-ne v0, v3, :cond_19

    .line 505
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_11

    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->category_list_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 506
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 507
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->category_list_cache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-lez v4, :cond_10

    .line 508
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->category_list_cache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 509
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 510
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    goto :goto_2

    .line 515
    :cond_10
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iput-object v1, v0, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    .line 517
    :cond_11
    :goto_2
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_subcategory:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_14

    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->subcategory_list_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 518
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_subcategory:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 519
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->subcategory_list_cache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_subcategory:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-lez v4, :cond_13

    .line 520
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->subcategory_list_cache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 521
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 522
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    goto :goto_3

    .line 527
    :cond_13
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iput-object v1, v0, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    .line 529
    :cond_14
    :goto_3
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_links_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_15

    .line 530
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_links_flag:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupSettings;->links:Ljava/lang/Integer;

    .line 531
    :cond_15
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_16

    .line 532
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_flag:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupSettings;->events:Ljava/lang/Integer;

    .line 533
    :cond_16
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_places_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_17

    .line 534
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_places_flag:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupSettings;->places:Ljava/lang/Integer;

    .line 535
    :cond_17
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_contacts_flag:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_18

    .line 536
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->sp_contacts_flag:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupSettings;->contacts:Ljava/lang/Integer;

    .line 537
    :cond_18
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 538
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iput-object v0, v1, Lcom/perm/kate/api/GroupSettings;->public_date:Ljava/lang/String;

    .line 540
    :cond_19
    invoke-virtual {p0, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 541
    new-instance v0, Lcom/perm/kate/EditGroupActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupActivity$8;-><init>(Lcom/perm/kate/EditGroupActivity;)V

    .line 546
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private tryParsePublicDate()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    .line 377
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->tryParsePublicDateWithoutYear()V

    :goto_0
    return-void
.end method

.method private tryParsePublicDateWithoutYear()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    .line 390
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private updateButtonLabel()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 450
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 453
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->btn_public_date:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->btn_public_date:Landroid/widget/Button;

    const v1, 0x7f0f024f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006c

    .line 82
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04f0

    .line 83
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 84
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    const p1, 0x7f09010c

    .line 85
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->ed_title:Landroid/widget/EditText;

    const p1, 0x7f0900fe

    .line 86
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->ed_description:Landroid/widget/EditText;

    const p1, 0x7f090105

    .line 87
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_address:Landroid/widget/EditText;

    const p1, 0x7f090106

    .line 88
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_web_site:Landroid/widget/EditText;

    const p1, 0x7f0902e5

    .line 89
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    const p1, 0x7f0902ec

    .line 90
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    const p1, 0x7f0902e7

    .line 91
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    const p1, 0x7f09035f

    .line 92
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->tv_community_subject:Landroid/widget/TextView;

    const p1, 0x7f0902e3

    .line 93
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    .line 94
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->category_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f090359

    .line 95
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->tv_category:Landroid/widget/TextView;

    const p1, 0x7f0902f9

    .line 96
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_subcategory:Landroid/widget/Spinner;

    const p1, 0x7f0903dc

    .line 97
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->tv_subcategory:Landroid/widget/TextView;

    const p1, 0x7f0903ee

    .line 98
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->tv_wall_flag:Landroid/widget/TextView;

    const p1, 0x7f090300

    .line 99
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_wall_flag:Landroid/widget/Spinner;

    const p1, 0x7f0902f1

    .line 100
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_photos_flag:Landroid/widget/Spinner;

    const p1, 0x7f0902ff

    .line 101
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_videos_flag:Landroid/widget/Spinner;

    const p1, 0x7f0902dc

    .line 102
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_audios_flag:Landroid/widget/Spinner;

    const p1, 0x7f0902ea

    .line 103
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_docs_flag:Landroid/widget/Spinner;

    const p1, 0x7f0902fb

    .line 104
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_topics_flag:Landroid/widget/Spinner;

    const p1, 0x7f0902f0

    .line 105
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_materials_flag:Landroid/widget/Spinner;

    const p1, 0x7f0902ef

    .line 106
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_links_flag:Landroid/widget/Spinner;

    const p1, 0x7f0902ed

    .line 107
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_flag:Landroid/widget/Spinner;

    const p1, 0x7f0902f2

    .line 108
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_places_flag:Landroid/widget/Spinner;

    const p1, 0x7f0902e8

    .line 109
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->sp_contacts_flag:Landroid/widget/Spinner;

    const p1, 0x7f090386

    .line 110
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->tv_links_flag:Landroid/widget/TextView;

    const p1, 0x7f09036a

    .line 111
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->tv_events_flag:Landroid/widget/TextView;

    const p1, 0x7f090399

    .line 112
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->tv_places_flag:Landroid/widget/TextView;

    const p1, 0x7f090361

    .line 113
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->tv_contacts_flag:Landroid/widget/TextView;

    const p1, 0x7f0903d3

    .line 114
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->tv_public_date:Landroid/widget/TextView;

    const p1, 0x7f090138

    .line 115
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->fl_button_bg:Landroid/widget/FrameLayout;

    const p1, 0x7f09008c

    .line 116
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->btn_public_date:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->public_date_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090078

    .line 118
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->btn_save:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->save_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 120
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->btn_cancel:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->cancel_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090368

    .line 122
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->tv_docs_flag:Landroid/widget/TextView;

    const p1, 0x7f090389

    .line 123
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->tv_materials_flag:Landroid/widget/TextView;

    .line 124
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity;->ed_title:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.group_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/EditGroupActivity;->group_id:J

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.group_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    .line 127
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity;->btn_save:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "club"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/perm/kate/EditGroupActivity;->group_id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->default_address:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_address:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 130
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->getGroupSettingsInThread()V

    .line 131
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->prepareFieldsByType()V

    return-void
.end method
