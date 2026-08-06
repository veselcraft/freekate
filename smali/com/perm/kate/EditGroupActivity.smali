.class public Lcom/perm/kate/EditGroupActivity;
.super Lcom/perm/kate/BaseActivity;
.source "EditGroupActivity.java"


# instance fields
.field private address:Ljava/lang/String;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_public_date:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private cancel_ClickListener:Landroid/view/View$OnClickListener;

.field private category_list_caсhe:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private category_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private default_address:Ljava/lang/String;

.field private ed_description:Landroid/widget/EditText;

.field private ed_page_address:Landroid/widget/EditText;

.field private ed_page_web_site:Landroid/widget/EditText;

.field private ed_title:Landroid/widget/EditText;

.field private edit_callback:Lcom/perm/kate/session/Callback;

.field private ex_category_list_caсhe:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/StrPair;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private subcategory_list_caсhe:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subject_list_caсhe:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_caсhe:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->category_list_caсhe:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ex_category_list_caсhe:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->subcategory_list_caсhe:Ljava/util/HashMap;

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
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->category_list_caсhe:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->displaySettings()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->saveSettingsGroup()V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/perm/kate/EditGroupActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/perm/kate/EditGroupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->updateButtonLabel()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ex_category_list_caсhe:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->subcategory_list_caсhe:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_subcategory:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_subcategory:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/api/GroupSettings;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    return-object v0
.end method

.method static synthetic access$602(Lcom/perm/kate/EditGroupActivity;Lcom/perm/kate/api/GroupSettings;)Lcom/perm/kate/api/GroupSettings;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/GroupSettings;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    return-object p1
.end method

.method static synthetic access$700(Lcom/perm/kate/EditGroupActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/perm/kate/EditGroupActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->get_settings_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->displaySettingsInUiThread()V

    return-void
.end method

.method private displaySettings()V
    .locals 15

    .prologue
    .line 265
    :try_start_0
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    if-eqz v11, :cond_14

    .line 266
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->ed_title:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->ed_description:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->description:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_address:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->address:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->address:Ljava/lang/String;

    iput-object v11, p0, Lcom/perm/kate/EditGroupActivity;->address:Ljava/lang/String;

    .line 270
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_web_site:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->website:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    if-eqz v11, :cond_1

    .line 272
    iget v11, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-nez v11, :cond_0

    .line 273
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 274
    :cond_0
    iget v11, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 275
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 277
    :cond_1
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_caсhe:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 278
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    invoke-static {v11}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->subject_list:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->subject_list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 279
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->subject_list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    .line 280
    .local v8, "subject_items":[Ljava/lang/String;
    const/4 v11, 0x0

    const v12, 0x7f0701f4

    invoke-virtual {p0, v12}, Lcom/perm/kate/EditGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    .line 281
    const/4 v4, 0x1

    .line 282
    .local v4, "i":I
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->subject_list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/StrPair;

    .line 283
    .local v5, "pair":Lcom/perm/kate/api/StrPair;
    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_caсhe:Ljava/util/HashMap;

    iget-object v13, v5, Lcom/perm/kate/api/StrPair;->id:Ljava/lang/String;

    iget-object v14, v5, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v12, v5, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    aput-object v12, v8, v4

    .line 285
    add-int/lit8 v4, v4, 0x1

    .line 286
    goto :goto_0

    .line 287
    .end local v5    # "pair":Lcom/perm/kate/api/StrPair;
    :cond_2
    new-instance v9, Landroid/widget/ArrayAdapter;

    const v11, 0x1090008

    invoke-direct {v9, p0, v11, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 288
    .local v9, "subject_spinner_adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v11, 0x1090009

    invoke-virtual {v9, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 289
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v11, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 290
    const/4 v6, 0x0

    .line 291
    .local v6, "subject_item":Ljava/lang/String;
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_caсhe:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 292
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_caсhe:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "subject_item":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 293
    .restart local v6    # "subject_item":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9, v6}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v7

    .line 294
    .local v7, "subject_item_position":I
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v11, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 297
    .end local v4    # "i":I
    .end local v6    # "subject_item":Ljava/lang/String;
    .end local v7    # "subject_item_position":I
    .end local v8    # "subject_items":[Ljava/lang/String;
    .end local v9    # "subject_spinner_adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_4
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    invoke-static {v11}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->public_category_list:Ljava/util/ArrayList;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->public_category_list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 298
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->public_category_list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v3, v11, [Ljava/lang/String;

    .line 299
    .local v3, "category_items":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 300
    .restart local v4    # "i":I
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->public_category_list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/ExStrPair;

    .line 301
    .local v5, "pair":Lcom/perm/kate/api/ExStrPair;
    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->category_list_caсhe:Ljava/util/HashMap;

    iget-object v13, v5, Lcom/perm/kate/api/ExStrPair;->id:Ljava/lang/String;

    iget-object v14, v5, Lcom/perm/kate/api/ExStrPair;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->ex_category_list_caсhe:Ljava/util/HashMap;

    iget-object v13, v5, Lcom/perm/kate/api/ExStrPair;->id:Ljava/lang/String;

    iget-object v14, v5, Lcom/perm/kate/api/ExStrPair;->sublist:Ljava/util/ArrayList;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v12, v5, Lcom/perm/kate/api/ExStrPair;->name:Ljava/lang/String;

    aput-object v12, v3, v4

    .line 304
    add-int/lit8 v4, v4, 0x1

    .line 305
    goto :goto_1

    .line 306
    .end local v5    # "pair":Lcom/perm/kate/api/ExStrPair;
    :cond_5
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v11, 0x1090008

    invoke-direct {v0, p0, v11, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 307
    .local v0, "category_adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v11, 0x1090009

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 308
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v11, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "category_item":Ljava/lang/String;
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->category_list_caсhe:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 311
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->category_list_caсhe:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "category_item":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 312
    .restart local v1    # "category_item":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 313
    .local v2, "category_item_position":I
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v11, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 317
    .end local v0    # "category_adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "category_item":Ljava/lang/String;
    .end local v2    # "category_item_position":I
    .end local v3    # "category_items":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_7
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->wall:Ljava/lang/Integer;

    if-eqz v11, :cond_8

    .line 318
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_wall_flag:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->wall:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 319
    :cond_8
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->photos:Ljava/lang/Integer;

    if-eqz v11, :cond_9

    .line 320
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_photos_flag:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->photos:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 321
    :cond_9
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->video:Ljava/lang/Integer;

    if-eqz v11, :cond_a

    .line 322
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_videos_flag:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->video:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 323
    :cond_a
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->audio:Ljava/lang/Integer;

    if-eqz v11, :cond_b

    .line 324
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_audios_flag:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->audio:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 325
    :cond_b
    iget v11, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_c

    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->docs:Ljava/lang/Integer;

    if-eqz v11, :cond_c

    .line 326
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_docs_flag:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->docs:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 327
    :cond_c
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->topics:Ljava/lang/Integer;

    if-eqz v11, :cond_d

    .line 328
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_topics_flag:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->topics:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 329
    :cond_d
    iget v11, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_e

    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->wiki:Ljava/lang/Integer;

    if-eqz v11, :cond_e

    .line 330
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_materials_flag:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->wiki:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 331
    :cond_e
    iget v11, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    .line 332
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->links:Ljava/lang/Integer;

    if-eqz v11, :cond_f

    .line 333
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_links_flag:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->links:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 334
    :cond_f
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->events:Ljava/lang/Integer;

    if-eqz v11, :cond_10

    .line 335
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_flag:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->events:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 336
    :cond_10
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->places:Ljava/lang/Integer;

    if-eqz v11, :cond_11

    .line 337
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_places_flag:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->places:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 338
    :cond_11
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->contacts:Ljava/lang/Integer;

    if-eqz v11, :cond_12

    .line 339
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->sp_contacts_flag:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v12, v12, Lcom/perm/kate/api/GroupSettings;->contacts:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 340
    :cond_12
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->public_date:Ljava/lang/String;

    if-eqz v11, :cond_13

    .line 341
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->public_date:Ljava/lang/String;

    iput-object v11, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    .line 342
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->parsePublicDate()V

    .line 343
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->updateButtonLabel()V

    .line 349
    :cond_13
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity;->btn_save:Landroid/widget/Button;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 357
    :goto_2
    return-void

    .line 351
    :cond_14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->onError()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 352
    :catch_0
    move-exception v10

    .line 353
    .local v10, "th":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->onError()V

    .line 354
    invoke-static {v10}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 355
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private displaySettingsInUiThread()V
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_0
    new-instance v0, Lcom/perm/kate/EditGroupActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupActivity$4;-><init>(Lcom/perm/kate/EditGroupActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getGroupSettingsInThread()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->showProgressBar(Z)V

    .line 230
    new-instance v0, Lcom/perm/kate/EditGroupActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupActivity$2;-><init>(Lcom/perm/kate/EditGroupActivity;)V

    .line 235
    invoke-virtual {v0}, Lcom/perm/kate/EditGroupActivity$2;->start()V

    .line 236
    return-void
.end method

.method private onError()V
    .locals 2

    .prologue
    .line 398
    const v0, 0x7f07049e

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->displayToast(I)V

    .line 399
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->btn_save:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 400
    return-void
.end method

.method private parsePublicDate()V
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "values":[Ljava/lang/String;
    const-string v1, "0"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    .end local v0    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 364
    .restart local v0    # "values":[Ljava/lang/String;
    :cond_1
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 365
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->tryParsePublicDateWithoutYear()V

    goto :goto_0

    .line 367
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->tryParsePublicDate()V

    goto :goto_0
.end method

.method private prepareFieldsByType()V
    .locals 10

    .prologue
    const v9, 0x1090009

    const v8, 0x1090008

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 135
    iget v4, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-nez v4, :cond_0

    .line 136
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 137
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 138
    :cond_0
    iget v4, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 139
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 140
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 143
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 144
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->tv_community_subject:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 146
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->tv_docs_flag:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_docs_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 148
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->tv_materials_flag:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_materials_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 150
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 151
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->tv_category:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_links_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 153
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 154
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_places_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 155
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_contacts_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 156
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->tv_links_flag:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->tv_events_flag:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->tv_places_flag:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->tv_contacts_flag:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->tv_wall_flag:Landroid/widget/TextView;

    const v5, 0x7f070073

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 161
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "items_values1":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v8, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 163
    .local v0, "adapter1":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 164
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_wall_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 165
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "items_values2":[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, v8, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 167
    .local v1, "adapter2":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 168
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_photos_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 169
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_videos_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 170
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_audios_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 171
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_topics_flag:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 172
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->tv_public_date:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->fl_button_bg:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private saveSettingsGroup()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 459
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->ed_title:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    const v4, 0x7f0704b0

    invoke-virtual {p0, v4}, Lcom/perm/kate/EditGroupActivity;->displayToast(I)V

    .line 547
    :goto_0
    return-void

    .line 464
    :cond_0
    new-instance v4, Lcom/perm/kate/api/GroupSettings;

    invoke-direct {v4}, Lcom/perm/kate/api/GroupSettings;-><init>()V

    iput-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    .line 465
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iput-object v3, v4, Lcom/perm/kate/api/GroupSettings;->title:Ljava/lang/String;

    .line 466
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->ed_description:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->description:Ljava/lang/String;

    .line 467
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_address:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "_address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 469
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->default_address:Ljava/lang/String;

    .line 470
    :cond_1
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->address:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 471
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iput-object v0, v4, Lcom/perm/kate/api/GroupSettings;->address:Ljava/lang/String;

    .line 472
    :cond_2
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_web_site:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->website:Ljava/lang/String;

    .line 473
    iget v4, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-nez v4, :cond_16

    .line 474
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    .line 478
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_5

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_caсhe:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 479
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 480
    .local v2, "selected_item":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_caсhe:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-lez v4, :cond_17

    .line 481
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->subject_list_caсhe:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 482
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 483
    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v5, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    .line 490
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "selected_item":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_wall_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_6

    .line 491
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_wall_flag:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->wall:Ljava/lang/Integer;

    .line 492
    :cond_6
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_photos_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_7

    .line 493
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_photos_flag:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->photos:Ljava/lang/Integer;

    .line 494
    :cond_7
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_videos_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_8

    .line 495
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_videos_flag:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->video:Ljava/lang/Integer;

    .line 496
    :cond_8
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_audios_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_9

    .line 497
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_audios_flag:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->audio:Ljava/lang/Integer;

    .line 498
    :cond_9
    iget v4, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-eq v4, v7, :cond_a

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_docs_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_a

    .line 499
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_docs_flag:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->docs:Ljava/lang/Integer;

    .line 500
    :cond_a
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_topics_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_b

    .line 501
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_topics_flag:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->topics:Ljava/lang/Integer;

    .line 502
    :cond_b
    iget v4, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-eq v4, v7, :cond_c

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_materials_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_c

    .line 503
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_materials_flag:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->wiki:Ljava/lang/Integer;

    .line 504
    :cond_c
    iget v4, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    if-ne v4, v7, :cond_15

    .line 505
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_e

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->category_list_caсhe:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 506
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 507
    .restart local v2    # "selected_item":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->category_list_caсhe:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-lez v4, :cond_18

    .line 508
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->category_list_caсhe:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 509
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 510
    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v5, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    .line 517
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "selected_item":Ljava/lang/String;
    :cond_e
    :goto_3
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_subcategory:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_10

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->subcategory_list_caсhe:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 518
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_subcategory:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 519
    .restart local v2    # "selected_item":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->subcategory_list_caсhe:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_subcategory:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-lez v4, :cond_19

    .line 520
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->subcategory_list_caсhe:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 521
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 522
    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v5, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    .line 529
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "selected_item":Ljava/lang/String;
    :cond_10
    :goto_4
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_links_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_11

    .line 530
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_links_flag:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->links:Ljava/lang/Integer;

    .line 531
    :cond_11
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_12

    .line 532
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_flag:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->events:Ljava/lang/Integer;

    .line 533
    :cond_12
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_places_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_13

    .line 534
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_places_flag:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->places:Ljava/lang/Integer;

    .line 535
    :cond_13
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->sp_contacts_flag:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-le v4, v6, :cond_14

    .line 536
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_contacts_flag:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->contacts:Ljava/lang/Integer;

    .line 537
    :cond_14
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 538
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->public_date:Ljava/lang/String;

    .line 540
    :cond_15
    invoke-virtual {p0, v7}, Lcom/perm/kate/EditGroupActivity;->showProgressBar(Z)V

    .line 541
    new-instance v4, Lcom/perm/kate/EditGroupActivity$8;

    invoke-direct {v4, p0}, Lcom/perm/kate/EditGroupActivity$8;-><init>(Lcom/perm/kate/EditGroupActivity;)V

    .line 546
    invoke-virtual {v4}, Lcom/perm/kate/EditGroupActivity$8;->start()V

    goto/16 :goto_0

    .line 475
    :cond_16
    iget v4, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 476
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 488
    .restart local v2    # "selected_item":Ljava/lang/String;
    :cond_17
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    const-string v5, "0"

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    goto/16 :goto_2

    .line 515
    :cond_18
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    const-string v5, "0"

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    goto/16 :goto_3

    .line 527
    :cond_19
    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity;->gs:Lcom/perm/kate/api/GroupSettings;

    const-string v5, "0"

    iput-object v5, v4, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method private tryParsePublicDate()V
    .locals 3

    .prologue
    .line 373
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM.yyyy"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, "df":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    .line 377
    iget-object v2, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->tryParsePublicDateWithoutYear()V

    goto :goto_0
.end method

.method private tryParsePublicDateWithoutYear()V
    .locals 3

    .prologue
    .line 386
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, "df":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    .line 390
    iget-object v2, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/EditGroupActivity;->public_date_str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateButtonLabel()V
    .locals 3

    .prologue
    .line 447
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    const/16 v2, 0x46

    if-ne v1, v2, :cond_0

    .line 450
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, "df":Ljava/text/SimpleDateFormat;
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->btn_public_date:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/EditGroupActivity;->public_date:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 456
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    :goto_1
    return-void

    .line 452
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "df":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 455
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->btn_public_date:Landroid/widget/Button;

    const v2, 0x7f0701f4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f030062

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->setContentView(I)V

    .line 83
    const v0, 0x7f070460

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->setHeaderTitle(I)V

    .line 84
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupActivity;->setButtonsBg()V

    .line 85
    const v0, 0x7f0e012c

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_title:Landroid/widget/EditText;

    .line 86
    const v0, 0x7f0e012e

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_description:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f0e012d

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_address:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f0e0137

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_web_site:Landroid/widget/EditText;

    .line 89
    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_communities_access:Landroid/widget/Spinner;

    .line 90
    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_access:Landroid/widget/Spinner;

    .line 91
    const v0, 0x7f0e0132

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_community_subject:Landroid/widget/Spinner;

    .line 92
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_community_subject:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0e0134

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    .line 94
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_category:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->category_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    const v0, 0x7f0e0133

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_category:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0e0136

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_subcategory:Landroid/widget/Spinner;

    .line 97
    const v0, 0x7f0e0135

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_subcategory:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0e013a

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_wall_flag:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0e013b

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_wall_flag:Landroid/widget/Spinner;

    .line 100
    const v0, 0x7f0e013c

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_photos_flag:Landroid/widget/Spinner;

    .line 101
    const v0, 0x7f0e013d

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_videos_flag:Landroid/widget/Spinner;

    .line 102
    const v0, 0x7f0e013e

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_audios_flag:Landroid/widget/Spinner;

    .line 103
    const v0, 0x7f0e0140

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_docs_flag:Landroid/widget/Spinner;

    .line 104
    const v0, 0x7f0e0141

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_topics_flag:Landroid/widget/Spinner;

    .line 105
    const v0, 0x7f0e0143

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_materials_flag:Landroid/widget/Spinner;

    .line 106
    const v0, 0x7f0e0145

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_links_flag:Landroid/widget/Spinner;

    .line 107
    const v0, 0x7f0e0147

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_events_flag:Landroid/widget/Spinner;

    .line 108
    const v0, 0x7f0e0149

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_places_flag:Landroid/widget/Spinner;

    .line 109
    const v0, 0x7f0e014b

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->sp_contacts_flag:Landroid/widget/Spinner;

    .line 110
    const v0, 0x7f0e0144

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_links_flag:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0e0146

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_events_flag:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0e0148

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_places_flag:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0e014a

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_contacts_flag:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0e0138

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_public_date:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->fl_button_bg:Landroid/widget/FrameLayout;

    .line 116
    const v0, 0x7f0e0139

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->btn_public_date:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->btn_public_date:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->public_date_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->btn_save:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->btn_save:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->save_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->btn_cancel:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->cancel_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f0e013f

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_docs_flag:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0e0142

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->tv_materials_flag:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 125
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.group_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/EditGroupActivity;->group_id:J

    .line 126
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.group_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/EditGroupActivity;->group_type:I

    .line 127
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->btn_save:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "club"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/perm/kate/EditGroupActivity;->group_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditGroupActivity;->default_address:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity;->ed_page_address:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity;->default_address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 130
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->getGroupSettingsInThread()V

    .line 131
    invoke-direct {p0}, Lcom/perm/kate/EditGroupActivity;->prepareFieldsByType()V

    .line 132
    return-void
.end method
