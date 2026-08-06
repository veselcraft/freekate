.class public Lcom/perm/kate/EditProfileActivity;
.super Lcom/perm/kate/BaseActivity;
.source "EditProfileActivity.java"


# static fields
.field public static c1:I

.field public static c2:I

.field public static countries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Country;",
            ">;"
        }
    .end annotation
.end field

.field public static countries_loaded:Z

.field public static full_countries_loaded:Z


# instance fields
.field private allow_perform_click:Z

.field private bdate:Ljava/lang/String;

.field private bdate_OnClickListener:Landroid/view/View$OnClickListener;

.field private bdate_visibility:Ljava/lang/Integer;

.field private birth_day:Ljava/lang/Integer;

.field private birth_month:Ljava/lang/Integer;

.field private birth_year:Ljava/lang/Integer;

.field private btn_bdate:Landroid/widget/Button;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private cancel_OnClickListener:Landroid/view/View$OnClickListener;

.field private cancel_request_OnClickListener:Landroid/view/View$OnClickListener;

.field private cancel_request_id:Ljava/lang/Long;

.field private cancel_request_info_callback:Lcom/perm/kate/session/Callback;

.field private change_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

.field private cities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/City;",
            ">;"
        }
    .end annotation
.end field

.field private cities_callback:Lcom/perm/kate/session/Callback;

.field private cities_handler:Landroid/os/Handler;

.field private city_id:Ljava/lang/Integer;

.field private countries_callback:Lcom/perm/kate/session/Callback;

.field private country_id:Ljava/lang/Integer;

.field private delete_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

.field private ed_first_name:Landroid/widget/EditText;

.field private ed_hometown:Landroid/widget/EditText;

.field private ed_last_name:Landroid/widget/EditText;

.field private ed_maiden_name:Landroid/widget/EditText;

.field private first_name:Ljava/lang/String;

.field private get_profile_info_callback:Lcom/perm/kate/session/Callback;

.field private home_town:Ljava/lang/String;

.field private last_name:Ljava/lang/String;

.field private ll_edited_values:Landroid/view/View;

.field private ll_relation_partner:Landroid/widget/LinearLayout;

.field private ll_relation_partner_buttons:Landroid/widget/LinearLayout;

.field private maiden_name:Ljava/lang/String;

.field private relation:Ljava/lang/Integer;

.field private relation_partner_id:Ljava/lang/Long;

.field private save_OnClickListener:Landroid/view/View$OnClickListener;

.field private save_profile_info_callback:Lcom/perm/kate/session/Callback;

.field private sex:Ljava/lang/Integer;

.field private sex_change_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private sp_bdate_visibility:Landroid/widget/Spinner;

.field private sp_city:Landroid/widget/AutoCompleteTextView;

.field private sp_city_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private sp_city_watcher:Landroid/text/TextWatcher;

.field private sp_country:Landroid/widget/Spinner;

.field private sp_country_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private sp_sex:Landroid/widget/Spinner;

.field private sp_status:Landroid/widget/Spinner;

.field private startGetCitiesRunnable:Ljava/lang/Runnable;

.field private status_change_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private tv_label_cancel_request:Landroid/widget/TextView;

.field private tv_label_change_partner:Landroid/widget/TextView;

.field private tv_label_delete_partner:Landroid/widget/TextView;

.field private tv_label_new_name:Landroid/widget/TextView;

.field private tv_relation_partner:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    .line 82
    sput-boolean v1, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    .line 83
    const/4 v0, 0x4

    sput v0, Lcom/perm/kate/EditProfileActivity;->c1:I

    .line 84
    const/16 v0, 0x12

    sput v0, Lcom/perm/kate/EditProfileActivity;->c2:I

    .line 85
    sput-boolean v1, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->first_name:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->last_name:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->maiden_name:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_id:Ljava/lang/Long;

    .line 69
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sex:Ljava/lang/Integer;

    .line 70
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    .line 71
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation_partner_id:Ljava/lang/Long;

    .line 72
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate_visibility:Ljava/lang/Integer;

    .line 74
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->home_town:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    .line 76
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->city_id:Ljava/lang/Integer;

    .line 78
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    .line 79
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    .line 80
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/EditProfileActivity;->allow_perform_click:Z

    .line 210
    new-instance v0, Lcom/perm/kate/EditProfileActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditProfileActivity$3;-><init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->get_profile_info_callback:Lcom/perm/kate/session/Callback;

    .line 346
    new-instance v0, Lcom/perm/kate/EditProfileActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$6;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_OnClickListener:Landroid/view/View$OnClickListener;

    .line 354
    new-instance v0, Lcom/perm/kate/EditProfileActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$7;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->save_OnClickListener:Landroid/view/View$OnClickListener;

    .line 364
    new-instance v0, Lcom/perm/kate/EditProfileActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$8;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate_OnClickListener:Landroid/view/View$OnClickListener;

    .line 407
    new-instance v0, Lcom/perm/kate/EditProfileActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$9;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sex_change_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 417
    new-instance v0, Lcom/perm/kate/EditProfileActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$10;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->status_change_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 466
    new-instance v0, Lcom/perm/kate/EditProfileActivity$12;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditProfileActivity$12;-><init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->save_profile_info_callback:Lcom/perm/kate/session/Callback;

    .line 520
    new-instance v0, Lcom/perm/kate/EditProfileActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$14;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->change_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

    .line 529
    new-instance v0, Lcom/perm/kate/EditProfileActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$15;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->delete_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

    .line 559
    new-instance v0, Lcom/perm/kate/EditProfileActivity$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$16;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_OnClickListener:Landroid/view/View$OnClickListener;

    .line 577
    new-instance v0, Lcom/perm/kate/EditProfileActivity$18;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditProfileActivity$18;-><init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_info_callback:Lcom/perm/kate/session/Callback;

    .line 606
    new-instance v0, Lcom/perm/kate/EditProfileActivity$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$20;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 640
    new-instance v0, Lcom/perm/kate/EditProfileActivity$22;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditProfileActivity$22;-><init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->countries_callback:Lcom/perm/kate/session/Callback;

    .line 708
    new-instance v0, Lcom/perm/kate/EditProfileActivity$25;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditProfileActivity$25;-><init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities_callback:Lcom/perm/kate/session/Callback;

    .line 770
    new-instance v0, Lcom/perm/kate/EditProfileActivity$26;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$26;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 777
    new-instance v0, Lcom/perm/kate/EditProfileActivity$27;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$27;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city_watcher:Landroid/text/TextWatcher;

    .line 792
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities_handler:Landroid/os/Handler;

    .line 800
    new-instance v0, Lcom/perm/kate/EditProfileActivity$28;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$28;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->startGetCitiesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private OnSavedInUiThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/perm/kate/EditProfileActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v0, Lcom/perm/kate/EditProfileActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/EditProfileActivity$13;-><init>(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private UpdateRelationPartner(J)V
    .locals 5
    .param p1, "_id"    # J

    .prologue
    .line 548
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/EditProfileActivity;->relation_partner_id:Ljava/lang/Long;

    .line 549
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 550
    .local v0, "relation_partner":Lcom/perm/kate/api/User;
    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070208

    invoke-virtual {p0, v3}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    const v2, 0x7f070417

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 555
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->btn_save:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->btn_cancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->updateBdateButtonLabel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->sex:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->checkVisibilityMaidenTextBox()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->checkVisibilityRelationPartnerTextBox()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->first_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->last_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->get_profile_info_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->maiden_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation_partner_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->relation_partner_id:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate_visibility:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->home_town:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->city_id:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->city_id:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->save_profile_info_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->OnSavedInUiThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/EditProfileActivity;Lcom/perm/kate/api/ProfileInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/ProfileInfo;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->displayDataInUiThread(Lcom/perm/kate/api/ProfileInfo;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->cancelRequestInThread()V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_id:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_info_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->onCancelRequestInUiThread()V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_cancel_request:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/perm/kate/EditProfileActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->loadCountries(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/perm/kate/EditProfileActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->loadCitiesByCountry(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->checkCityVisibility()V

    return-void
.end method

.method static synthetic access$3900(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->countries_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/EditProfileActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->setEnabledButtonsInUI(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->fillCountries()V

    return-void
.end method

.method static synthetic access$4100(Lcom/perm/kate/EditProfileActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->disableCountriesSpinner(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->displayCountry()V

    return-void
.end method

.method static synthetic access$4300(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->performClickCountriesSpinner()V

    return-void
.end method

.method static synthetic access$4400(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/perm/kate/EditProfileActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->fillCities(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->getCityIdByTitle(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->getCitiesByTextWithDelay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/EditProfileActivity;Lcom/perm/kate/api/ProfileInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/ProfileInfo;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->displayData(Lcom/perm/kate/api/ProfileInfo;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->getCitiesByText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/EditProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/perm/kate/EditProfileActivity;->allow_perform_click:Z

    return v0
.end method

.method static synthetic access$602(Lcom/perm/kate/EditProfileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/perm/kate/EditProfileActivity;->allow_perform_click:Z

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->updateValueFields()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->saveInThread()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$902(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditProfileActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    return-object p1
.end method

.method private allowEdit()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 341
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_first_name:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ll_edited_values:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    return-void
.end method

.method private cancelRequestInThread()V
    .locals 2

    .prologue
    .line 568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->showProgressBar(Z)V

    .line 569
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/EditProfileActivity$17;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditProfileActivity$17;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 574
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 575
    return-void
.end method

.method private changeAllowPerformClickWithDelay()V
    .locals 4

    .prologue
    .line 324
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 325
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/perm/kate/EditProfileActivity$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditProfileActivity$5;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    return-void
.end method

.method private checkCityVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 624
    .local v0, "visible":Z
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 625
    if-nez v0, :cond_0

    .line 626
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 627
    :cond_0
    return-void

    .end local v0    # "visible":Z
    :cond_1
    move v0, v1

    .line 623
    goto :goto_0

    .line 624
    .restart local v0    # "visible":Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private checkVisibilityMaidenTextBox()V
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->ed_maiden_name:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sex:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 334
    return-void

    .line 333
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private checkVisibilityRelationPartnerTextBox()V
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    return-void

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableCountriesSpinner(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 678
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 681
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private displayCountry()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->getCountryPosition()I

    move-result v0

    .line 308
    .local v0, "pos":I
    if-nez v0, :cond_2

    .line 309
    iput-boolean v2, p0, Lcom/perm/kate/EditProfileActivity;->allow_perform_click:Z

    .line 311
    sget-boolean v1, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    if-eqz v1, :cond_1

    .line 312
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/perm/kate/EditProfileActivity;->loadCountries(I)V

    .line 321
    .end local v0    # "pos":I
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local v0    # "pos":I
    :cond_1
    invoke-direct {p0, v2}, Lcom/perm/kate/EditProfileActivity;->loadCountries(I)V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 317
    sget-boolean v1, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez v1, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->changeAllowPerformClickWithDelay()V

    goto :goto_0
.end method

.method private displayData(Lcom/perm/kate/api/ProfileInfo;)V
    .locals 7
    .param p1, "profile"    # Lcom/perm/kate/api/ProfileInfo;

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 240
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->allowEdit()V

    .line 241
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    if-eqz v3, :cond_9

    .line 242
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v3, v3, Lcom/perm/kate/api/NameRequest;->id:Ljava/lang/Long;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v3, v3, Lcom/perm/kate/api/NameRequest;->status:Ljava/lang/String;

    const-string v4, "processing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 244
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_cancel_request:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v3, v3, Lcom/perm/kate/api/NameRequest;->id:Ljava/lang/Long;

    iput-object v3, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_id:Ljava/lang/Long;

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0701f3

    invoke-virtual {p0, v4}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v4, v4, Lcom/perm/kate/api/NameRequest;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v4, v4, Lcom/perm/kate/api/NameRequest;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0701ef

    invoke-virtual {p0, v4}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->ed_first_name:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->ed_last_name:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->ed_maiden_name:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->maiden_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->sex:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 258
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->sp_sex:Landroid/widget/Spinner;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->sex:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 259
    :cond_1
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->relation:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 260
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->sp_status:Landroid/widget/Spinner;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->relation:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 261
    :cond_2
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->relation:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 262
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->relation:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    .line 263
    :cond_3
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->relation_partner_id:Ljava/lang/Long;

    if-eqz v3, :cond_a

    .line 264
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->relation_partner_id:Ljava/lang/Long;

    iput-object v3, p0, Lcom/perm/kate/EditProfileActivity;->relation_partner_id:Ljava/lang/Long;

    .line 265
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070208

    invoke-virtual {p0, v5}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/perm/kate/api/ProfileInfo;->relation_partner_first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/perm/kate/api/ProfileInfo;->relation_partner_last_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    :goto_1
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->birthdate:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 273
    :try_start_0
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->birthdate:Ljava/lang/String;

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "arrs":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 275
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    .line 276
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    .line 277
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    .line 280
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->birthdate:Ljava/lang/String;

    iput-object v3, p0, Lcom/perm/kate/EditProfileActivity;->bdate:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0    # "arrs":[Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->updateBdateButtonLabel()V

    .line 288
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->sp_bdate_visibility:Landroid/widget/Spinner;

    iget v4, p1, Lcom/perm/kate/api/ProfileInfo;->birthdate_visibility:I

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 289
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->country:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    .line 290
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->country:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    .line 291
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->displayCountry()V

    .line 293
    :cond_5
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->city:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 294
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->city:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/perm/kate/EditProfileActivity;->city_id:Ljava/lang/Integer;

    .line 295
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->title_city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_6
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->home_town:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 298
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->home_town:Ljava/lang/String;

    iput-object v3, p0, Lcom/perm/kate/EditProfileActivity;->home_town:Ljava/lang/String;

    .line 299
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->ed_hometown:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/perm/kate/EditProfileActivity;->home_town:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_7
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->checkVisibilityMaidenTextBox()V

    .line 302
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->checkVisibilityRelationPartnerTextBox()V

    .line 303
    return-void

    .line 248
    :cond_8
    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v3, v3, Lcom/perm/kate/api/NameRequest;->status:Ljava/lang/String;

    const-string v4, "declined"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070246

    invoke-virtual {p0, v4}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v4, v4, Lcom/perm/kate/api/NameRequest;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v4, v4, Lcom/perm/kate/api/NameRequest;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0701ee

    invoke-virtual {p0, v4}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .restart local v1    # "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 253
    .end local v1    # "text":Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 268
    :cond_a
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    const v4, 0x7f070417

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 284
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method private displayDataInUiThread(Lcom/perm/kate/api/ProfileInfo;)V
    .locals 1
    .param p1, "profile"    # Lcom/perm/kate/api/ProfileInfo;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/perm/kate/EditProfileActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v0, Lcom/perm/kate/EditProfileActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/EditProfileActivity$4;-><init>(Lcom/perm/kate/EditProfileActivity;Lcom/perm/kate/api/ProfileInfo;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayNameFromCache()V
    .locals 6

    .prologue
    .line 190
    :try_start_0
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 191
    .local v0, "current_account_id":J
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v2

    .line 192
    .local v2, "profile":Lcom/perm/kate/api/User;
    iget-object v4, p0, Lcom/perm/kate/EditProfileActivity;->ed_first_name:Landroid/widget/EditText;

    iget-object v5, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, p0, Lcom/perm/kate/EditProfileActivity;->ed_last_name:Landroid/widget/EditText;

    iget-object v5, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v0    # "current_account_id":J
    .end local v2    # "profile":Lcom/perm/kate/api/User;
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v3

    .line 195
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private fillCities(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, "new_cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/City;>;"
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 757
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 759
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->fillCitiesSpinner()V

    .line 760
    return-void
.end method

.method private fillCitiesSpinner()V
    .locals 4

    .prologue
    .line 763
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 764
    .local v1, "cities_values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 765
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/City;

    iget-object v3, v3, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 764
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 766
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 767
    .local v0, "cities_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 768
    return-void
.end method

.method private fillCountries()V
    .locals 6

    .prologue
    .line 152
    sget-boolean v3, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez v3, :cond_0

    .line 153
    sget-object v3, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 154
    new-instance v0, Lcom/perm/kate/api/Country;

    invoke-direct {v0}, Lcom/perm/kate/api/Country;-><init>()V

    .line 155
    .local v0, "c1":Lcom/perm/kate/api/Country;
    const-wide/16 v4, 0x1

    iput-wide v4, v0, Lcom/perm/kate/api/Country;->cid:J

    .line 156
    const v3, 0x7f07024b

    invoke-virtual {p0, v3}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 157
    new-instance v1, Lcom/perm/kate/api/Country;

    invoke-direct {v1}, Lcom/perm/kate/api/Country;-><init>()V

    .line 158
    .local v1, "c2":Lcom/perm/kate/api/Country;
    const-wide/16 v4, 0x2

    iput-wide v4, v1, Lcom/perm/kate/api/Country;->cid:J

    .line 159
    const v3, 0x7f070290

    invoke-virtual {p0, v3}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 160
    new-instance v2, Lcom/perm/kate/api/Country;

    invoke-direct {v2}, Lcom/perm/kate/api/Country;-><init>()V

    .line 161
    .local v2, "c3":Lcom/perm/kate/api/Country;
    const-wide/16 v4, 0x3

    iput-wide v4, v2, Lcom/perm/kate/api/Country;->cid:J

    .line 162
    const v3, 0x7f070145

    invoke-virtual {p0, v3}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 163
    sget-object v3, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v3, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v3, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v0    # "c1":Lcom/perm/kate/api/Country;
    .end local v1    # "c2":Lcom/perm/kate/api/Country;
    .end local v2    # "c3":Lcom/perm/kate/api/Country;
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->fillCountriesSpinner()V

    goto :goto_0
.end method

.method private fillCountriesSpinner()V
    .locals 7

    .prologue
    .line 172
    const/4 v2, 0x2

    .line 173
    .local v2, "d":I
    sget-boolean v5, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-eqz v5, :cond_0

    .line 174
    const/4 v2, 0x1

    .line 175
    :cond_0
    sget-object v5, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v4, v5, v2

    .line 176
    .local v4, "len":I
    new-array v1, v4, [Ljava/lang/String;

    .line 177
    .local v1, "country_values":[Ljava/lang/String;
    const/4 v5, 0x0

    const v6, 0x7f070520

    invoke-virtual {p0, v6}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 178
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sub-int v5, v4, v2

    if-ge v3, v5, :cond_1

    .line 179
    add-int/lit8 v6, v3, 0x1

    sget-object v5, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Country;

    iget-object v5, v5, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    aput-object v5, v1, v6

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    :cond_1
    sget-boolean v5, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez v5, :cond_2

    .line 181
    add-int/lit8 v5, v4, -0x1

    const v6, 0x7f0701e7

    invoke-virtual {p0, v6}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 182
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 183
    .local v0, "country_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 184
    iget-object v5, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 185
    return-void
.end method

.method private getCitiesByText(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/perm/kate/EditProfileActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 812
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/perm/kate/EditProfileActivity;->getCountryByPosition(I)I

    move-result v0

    .line 815
    .local v0, "cid":I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/perm/kate/EditProfileActivity$29;

    invoke-direct {v2, p0, p1, v0}, Lcom/perm/kate/EditProfileActivity$29;-><init>(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 823
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private getCitiesByTextWithDelay(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities_handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->startGetCitiesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 796
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->startGetCitiesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 798
    :cond_0
    return-void
.end method

.method private getCityIdByTitle(Ljava/lang/String;)I
    .locals 4
    .param p1, "_city"    # Ljava/lang/String;

    .prologue
    .line 746
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 747
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/City;

    .line 748
    .local v0, "c":Lcom/perm/kate/api/City;
    iget-object v2, v0, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    iget-wide v2, v0, Lcom/perm/kate/api/City;->cid:J

    long-to-int v1, v2

    .line 752
    .end local v0    # "c":Lcom/perm/kate/api/City;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCountryByPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 725
    sget-object v1, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    .line 726
    sget-object v1, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Country;

    .line 727
    .local v0, "c":Lcom/perm/kate/api/Country;
    iget-wide v2, v0, Lcom/perm/kate/api/Country;->cid:J

    long-to-int v1, v2

    .line 729
    .end local v0    # "c":Lcom/perm/kate/api/Country;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCountryPosition()I
    .locals 6

    .prologue
    .line 733
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    sget-object v3, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 734
    const/4 v2, 0x0

    .line 735
    .local v2, "p":I
    sget-object v3, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Country;

    .line 736
    .local v0, "c":Lcom/perm/kate/api/Country;
    iget-wide v4, v0, Lcom/perm/kate/api/Country;->cid:J

    long-to-int v1, v4

    .line 737
    .local v1, "cid":I
    iget-object v4, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 738
    add-int/lit8 v3, v2, 0x1

    .line 742
    .end local v0    # "c":Lcom/perm/kate/api/Country;
    .end local v1    # "cid":I
    .end local v2    # "p":I
    :goto_1
    return v3

    .line 739
    .restart local v0    # "c":Lcom/perm/kate/api/Country;
    .restart local v1    # "cid":I
    .restart local v2    # "p":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 740
    goto :goto_0

    .line 742
    .end local v0    # "c":Lcom/perm/kate/api/Country;
    .end local v1    # "cid":I
    .end local v2    # "p":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getProfileInfoInThread()V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->showProgressBar(Z)V

    .line 202
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/EditProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditProfileActivity$2;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 208
    return-void
.end method

.method private loadCitiesByCountry(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 695
    if-gtz p1, :cond_0

    .line 696
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/perm/kate/EditProfileActivity;->fillCities(Ljava/util/ArrayList;)V

    .line 706
    :goto_0
    return-void

    .line 699
    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/perm/kate/EditProfileActivity;->getCountryByPosition(I)I

    move-result v0

    .line 700
    .local v0, "cid":I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/perm/kate/EditProfileActivity$24;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/EditProfileActivity$24;-><init>(Lcom/perm/kate/EditProfileActivity;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 705
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private loadCountries(I)V
    .locals 2
    .param p1, "need_full"    # I

    .prologue
    const/4 v0, 0x1

    .line 630
    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->showProgressBar(Z)V

    .line 631
    invoke-direct {p0, v0}, Lcom/perm/kate/EditProfileActivity;->disableCountriesSpinner(Z)V

    .line 632
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/EditProfileActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/EditProfileActivity$21;-><init>(Lcom/perm/kate/EditProfileActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 637
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 638
    return-void
.end method

.method private onCancelRequestInUiThread()V
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/perm/kate/EditProfileActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 595
    :cond_0
    new-instance v0, Lcom/perm/kate/EditProfileActivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$19;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private performClickCountriesSpinner()V
    .locals 4

    .prologue
    .line 684
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 692
    :goto_0
    return-void

    .line 686
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 687
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/perm/kate/EditProfileActivity$23;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditProfileActivity$23;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private saveInThread()V
    .locals 2

    .prologue
    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->showProgressBar(Z)V

    .line 429
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/EditProfileActivity$11;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditProfileActivity$11;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 440
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 441
    return-void
.end method

.method private setEnabledButtonsInUI(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 142
    new-instance v0, Lcom/perm/kate/EditProfileActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/EditProfileActivity$1;-><init>(Lcom/perm/kate/EditProfileActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method private updateBdateButtonLabel()V
    .locals 6

    .prologue
    .line 394
    const-string v2, ""

    .line 395
    .local v2, "label_text":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    .line 396
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    .line 397
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 398
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 399
    .local v0, "c":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 400
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "d MMMM yyyy"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 404
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "df":Ljava/text/SimpleDateFormat;
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->btn_bdate:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 405
    return-void

    .line 403
    :cond_0
    const v3, 0x7f0701f4

    invoke-virtual {p0, v3}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateValueFields()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 444
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_first_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->first_name:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->last_name:Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_maiden_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->maiden_name:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_sex:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 449
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_sex:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sex:Ljava/lang/Integer;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_status:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 451
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_status:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate:Ljava/lang/String;

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_bdate_visibility:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate_visibility:Ljava/lang/Integer;

    .line 456
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 457
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/EditProfileActivity;->getCountryByPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    .line 458
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perm/kate/EditProfileActivity;->getCityIdByTitle(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->city_id:Ljava/lang/Integer;

    .line 463
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_hometown:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->home_town:Ljava/lang/String;

    .line 464
    return-void

    .line 461
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->city_id:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x0

    .line 540
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 541
    const-string v2, "com.perm.kate.member_id"

    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 542
    .local v0, "member_id":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 543
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/EditProfileActivity;->UpdateRelationPartner(J)V

    .line 545
    .end local v0    # "member_id":J
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->setContentView(I)V

    .line 94
    const v0, 0x7f070192

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->setHeaderTitle(I)V

    .line 95
    invoke-virtual {p0}, Lcom/perm/kate/EditProfileActivity;->setButtonsBg()V

    .line 97
    const v0, 0x7f0e0154

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0e0155

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_cancel_request:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_cancel_request:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->btn_cancel:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->cancel_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->btn_save:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->btn_save:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->save_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0e0156

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_first_name:Landroid/widget/EditText;

    .line 107
    const v0, 0x7f0e0157

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_last_name:Landroid/widget/EditText;

    .line 108
    const v0, 0x7f0e0159

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_maiden_name:Landroid/widget/EditText;

    .line 109
    const v0, 0x7f0e0158

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ll_edited_values:Landroid/view/View;

    .line 111
    const v0, 0x7f0e015a

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_sex:Landroid/widget/Spinner;

    .line 112
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_sex:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sex_change_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 113
    const v0, 0x7f0e015b

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_status:Landroid/widget/Spinner;

    .line 114
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_status:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->status_change_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 115
    const v0, 0x7f0e0161

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->btn_bdate:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->btn_bdate:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->bdate_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f0e0162

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_bdate_visibility:Landroid/widget/Spinner;

    .line 118
    const v0, 0x7f0e0163

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    .line 119
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_country_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 120
    const v0, 0x7f0e0164

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    .line 121
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_city_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_city_watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    const v0, 0x7f0e0165

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_hometown:Landroid/widget/EditText;

    .line 125
    const v0, 0x7f0e015c

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f0e015e

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    .line 127
    const v0, 0x7f0e015d

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0e015f

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_change_partner:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0e0160

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_delete_partner:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->change_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_change_partner:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->change_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_delete_partner:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->delete_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perm/kate/EditProfileActivity;->setEnabledButtonsInUI(Z)V

    .line 136
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->fillCountries()V

    .line 137
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->displayNameFromCache()V

    .line 138
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->getProfileInfoInThread()V

    .line 139
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_city_watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities_handler:Landroid/os/Handler;

    .line 830
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 831
    return-void
.end method
