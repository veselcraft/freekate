.class public Lcom/perm/kate/EditProfileActivity;
.super Lcom/perm/kate/BaseActivity;
.source "EditProfileActivity.java"


# static fields
.field public static c1:I

.field public static c2:I

.field public static countries:Ljava/util/ArrayList;

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

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 82
    sput-boolean v0, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    const/4 v1, 0x4

    .line 83
    sput v1, Lcom/perm/kate/EditProfileActivity;->c1:I

    const/16 v1, 0x12

    .line 84
    sput v1, Lcom/perm/kate/EditProfileActivity;->c2:I

    .line 85
    sput-boolean v0, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

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

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/perm/kate/EditProfileActivity;->allow_perform_click:Z

    .line 210
    new-instance v0, Lcom/perm/kate/EditProfileActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditProfileActivity$3;-><init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->get_profile_info_callback:Lcom/perm/kate/session/Callback;

    .line 349
    new-instance v0, Lcom/perm/kate/EditProfileActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$6;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_OnClickListener:Landroid/view/View$OnClickListener;

    .line 357
    new-instance v0, Lcom/perm/kate/EditProfileActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$7;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->save_OnClickListener:Landroid/view/View$OnClickListener;

    .line 367
    new-instance v0, Lcom/perm/kate/EditProfileActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$8;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate_OnClickListener:Landroid/view/View$OnClickListener;

    .line 410
    new-instance v0, Lcom/perm/kate/EditProfileActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$9;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sex_change_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 420
    new-instance v0, Lcom/perm/kate/EditProfileActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$10;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->status_change_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 469
    new-instance v0, Lcom/perm/kate/EditProfileActivity$12;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditProfileActivity$12;-><init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->save_profile_info_callback:Lcom/perm/kate/session/Callback;

    .line 523
    new-instance v0, Lcom/perm/kate/EditProfileActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$14;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->change_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

    .line 532
    new-instance v0, Lcom/perm/kate/EditProfileActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$15;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->delete_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

    .line 564
    new-instance v0, Lcom/perm/kate/EditProfileActivity$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$16;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_OnClickListener:Landroid/view/View$OnClickListener;

    .line 582
    new-instance v0, Lcom/perm/kate/EditProfileActivity$18;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditProfileActivity$18;-><init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_info_callback:Lcom/perm/kate/session/Callback;

    .line 611
    new-instance v0, Lcom/perm/kate/EditProfileActivity$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$20;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 645
    new-instance v0, Lcom/perm/kate/EditProfileActivity$22;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditProfileActivity$22;-><init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->countries_callback:Lcom/perm/kate/session/Callback;

    .line 713
    new-instance v0, Lcom/perm/kate/EditProfileActivity$25;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditProfileActivity$25;-><init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities_callback:Lcom/perm/kate/session/Callback;

    .line 775
    new-instance v0, Lcom/perm/kate/EditProfileActivity$26;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$26;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 782
    new-instance v0, Lcom/perm/kate/EditProfileActivity$27;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$27;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city_watcher:Landroid/text/TextWatcher;

    .line 797
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities_handler:Landroid/os/Handler;

    .line 805
    new-instance v0, Lcom/perm/kate/EditProfileActivity$28;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$28;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->startGetCitiesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private OnSavedInUiThread(Ljava/lang/String;)V
    .locals 1

    .line 508
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 510
    :cond_0
    new-instance v0, Lcom/perm/kate/EditProfileActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/EditProfileActivity$13;-><init>(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private UpdateRelationPartner(J)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 553
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation_partner_id:Ljava/lang/Long;

    .line 554
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 556
    iget-object p2, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f0262

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 559
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    const p2, 0x7f0f04ac

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 560
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/Button;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->btn_save:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/Button;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->btn_cancel:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->updateBdateButtonLabel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->sex:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->sex:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->checkVisibilityMaidenTextBox()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->checkVisibilityRelationPartnerTextBox()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->bdate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->first_name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->last_name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->get_profile_info_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->maiden_name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Long;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->relation_partner_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->relation_partner_id:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->bdate_visibility:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->home_town:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->city_id:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->city_id:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->save_profile_info_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->OnSavedInUiThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/EditProfileActivity;Lcom/perm/kate/api/ProfileInfo;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->displayDataInUiThread(Lcom/perm/kate/api/ProfileInfo;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->cancelRequestInThread()V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Long;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_id:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_info_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->onCancelRequestInUiThread()V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_cancel_request:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/perm/kate/EditProfileActivity;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->loadCountries(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/perm/kate/EditProfileActivity;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->loadCitiesByCountry(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->checkCityVisibility()V

    return-void
.end method

.method static synthetic access$3900(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->countries_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/EditProfileActivity;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->setEnabledButtonsInUI(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->fillCountries()V

    return-void
.end method

.method static synthetic access$4100(Lcom/perm/kate/EditProfileActivity;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->disableCountriesSpinner(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->displayCountry()V

    return-void
.end method

.method static synthetic access$4300(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->performClickCountriesSpinner()V

    return-void
.end method

.method static synthetic access$4400(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->cities_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/perm/kate/EditProfileActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->fillCities(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->getCityIdByTitle(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->getCitiesByTextWithDelay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/EditProfileActivity;Lcom/perm/kate/api/ProfileInfo;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->displayData(Lcom/perm/kate/api/ProfileInfo;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->getCitiesByText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/EditProfileActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/perm/kate/EditProfileActivity;->allow_perform_click:Z

    return p0
.end method

.method static synthetic access$602(Lcom/perm/kate/EditProfileActivity;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/perm/kate/EditProfileActivity;->allow_perform_click:Z

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->updateValueFields()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->saveInThread()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$902(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    return-object p1
.end method

.method private allowEdit()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_first_name:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 345
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 346
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ll_edited_values:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private cancelRequestInThread()V
    .locals 2

    const/4 v0, 0x1

    .line 573
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 574
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/EditProfileActivity$17;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditProfileActivity$17;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 579
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private changeAllowPerformClickWithDelay()V
    .locals 4

    .line 327
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 328
    new-instance v1, Lcom/perm/kate/EditProfileActivity$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditProfileActivity$5;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private checkCityVisibility()V
    .locals 4

    .line 628
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 629
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    if-nez v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    :cond_2
    return-void
.end method

.method private checkVisibilityMaidenTextBox()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_maiden_name:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sex:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method private checkVisibilityRelationPartnerTextBox()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private disableCountriesSpinner(Z)V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 685
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method

.method private displayCountry()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->getCountryPosition()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/perm/kate/EditProfileActivity;->allow_perform_click:Z

    .line 314
    sget-boolean v1, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 315
    invoke-direct {p0, v0}, Lcom/perm/kate/EditProfileActivity;->loadCountries(I)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/EditProfileActivity;->loadCountries(I)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 320
    sget-boolean v0, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez v0, :cond_2

    .line 321
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->changeAllowPerformClickWithDelay()V

    :cond_2
    :goto_0
    return-void
.end method

.method private displayData(Lcom/perm/kate/api/ProfileInfo;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->allowEdit()V

    .line 242
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, " "

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v4, v0, Lcom/perm/kate/api/NameRequest;->id:Ljava/lang/Long;

    if-eqz v4, :cond_0

    iget-object v0, v0, Lcom/perm/kate/api/NameRequest;->status:Ljava/lang/String;

    const-string v4, "processing"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_cancel_request:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v0, v0, Lcom/perm/kate/api/NameRequest;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_id:Ljava/lang/Long;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f024e

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v4, v4, Lcom/perm/kate/api/NameRequest;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v4, v4, Lcom/perm/kate/api/NameRequest;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f024a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v4, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v0, v0, Lcom/perm/kate/api/NameRequest;->status:Ljava/lang/String;

    const-string v4, "declined"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f02a0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f0249

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v4, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_first_name:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_last_name:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_maiden_name:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->maiden_name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->sex:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 261
    iget-object v4, p0, Lcom/perm/kate/EditProfileActivity;->sp_sex:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 262
    :cond_3
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->relation:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 263
    iget-object v4, p0, Lcom/perm/kate/EditProfileActivity;->sp_status:Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 264
    :cond_4
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->relation:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 265
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    .line 266
    :cond_5
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->relation_partner_id:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 267
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation_partner_id:Ljava/lang/Long;

    .line 268
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f0262

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/perm/kate/api/ProfileInfo;->relation_partner_first_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/perm/kate/api/ProfileInfo;->relation_partner_last_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 271
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    const v3, 0x7f0f04ac

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    :goto_1
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->birthdate:Ljava/lang/String;

    if-eqz v0, :cond_7

    :try_start_0
    const-string v1, "\\."

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 277
    array-length v1, v0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    .line 278
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 279
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    const/4 v1, 0x2

    .line 280
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    .line 283
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->birthdate:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 290
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->updateBdateButtonLabel()V

    .line 291
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_bdate_visibility:Landroid/widget/Spinner;

    iget v1, p1, Lcom/perm/kate/api/ProfileInfo;->birthdate_visibility:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 292
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->country:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 293
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    .line 294
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->displayCountry()V

    .line 296
    :cond_8
    iget-object v0, p1, Lcom/perm/kate/api/ProfileInfo;->city:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 297
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->city_id:Ljava/lang/Integer;

    .line 298
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p1, Lcom/perm/kate/api/ProfileInfo;->title_city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_9
    iget-object p1, p1, Lcom/perm/kate/api/ProfileInfo;->home_town:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 301
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->home_town:Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_hometown:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_a
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->checkVisibilityMaidenTextBox()V

    .line 305
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->checkVisibilityRelationPartnerTextBox()V

    return-void
.end method

.method private displayDataInUiThread(Lcom/perm/kate/api/ProfileInfo;)V
    .locals 1

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance v0, Lcom/perm/kate/EditProfileActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/EditProfileActivity$4;-><init>(Lcom/perm/kate/EditProfileActivity;Lcom/perm/kate/api/ProfileInfo;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayNameFromCache()V
    .locals 3

    .line 190
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 191
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->ed_first_name:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->ed_last_name:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private fillCities(Ljava/util/ArrayList;)V
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 762
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 764
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->fillCitiesSpinner()V

    return-void
.end method

.method private fillCitiesSpinner()V
    .locals 3

    .line 768
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 769
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 770
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/City;

    iget-object v2, v2, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 772
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private fillCountries()V
    .locals 5

    .line 152
    sget-boolean v0, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez v0, :cond_0

    .line 153
    sget-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    new-instance v0, Lcom/perm/kate/api/Country;

    invoke-direct {v0}, Lcom/perm/kate/api/Country;-><init>()V

    const-wide/16 v1, 0x1

    .line 155
    iput-wide v1, v0, Lcom/perm/kate/api/Country;->cid:J

    const v1, 0x7f0f02a5

    .line 156
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 157
    new-instance v1, Lcom/perm/kate/api/Country;

    invoke-direct {v1}, Lcom/perm/kate/api/Country;-><init>()V

    const-wide/16 v2, 0x2

    .line 158
    iput-wide v2, v1, Lcom/perm/kate/api/Country;->cid:J

    const v2, 0x7f0f02e7

    .line 159
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 160
    new-instance v2, Lcom/perm/kate/api/Country;

    invoke-direct {v2}, Lcom/perm/kate/api/Country;-><init>()V

    const-wide/16 v3, 0x3

    .line 161
    iput-wide v3, v2, Lcom/perm/kate/api/Country;->cid:J

    const v3, 0x7f0f01ae

    .line 162
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 163
    sget-object v3, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->fillCountriesSpinner()V

    return-void
.end method

.method private fillCountriesSpinner()V
    .locals 7

    .line 173
    sget-boolean v0, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 175
    :goto_0
    sget-object v2, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    .line 176
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    .line 177
    aput-object v4, v3, v5

    :goto_1
    sub-int v4, v2, v0

    if-ge v5, v4, :cond_1

    add-int/lit8 v4, v5, 0x1

    .line 179
    sget-object v6, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Country;

    iget-object v5, v5, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    move v5, v4

    goto :goto_1

    .line 180
    :cond_1
    sget-boolean v0, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez v0, :cond_2

    sub-int/2addr v2, v1

    const v0, 0x7f0f0242

    .line 181
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 182
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 184
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private getCitiesByText(Ljava/lang/String;)V
    .locals 3

    .line 813
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 817
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/EditProfileActivity;->getCountryByPosition(I)I

    move-result v0

    .line 820
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/perm/kate/EditProfileActivity$29;

    invoke-direct {v2, p0, p1, v0}, Lcom/perm/kate/EditProfileActivity$29;-><init>(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 828
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private getCitiesByTextWithDelay(Ljava/lang/String;)V
    .locals 3

    .line 799
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity;->cities_handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 800
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->startGetCitiesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 801
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity;->cities_handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->startGetCitiesRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private getCityIdByTitle(Ljava/lang/String;)I
    .locals 4

    .line 751
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/City;

    .line 753
    iget-object v2, v1, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    iget-wide v0, v1, Lcom/perm/kate/api/City;->cid:J

    long-to-int p1, v0

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getCountryByPosition(I)I
    .locals 2

    .line 730
    sget-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 731
    sget-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Country;

    .line 732
    iget-wide v0, p1, Lcom/perm/kate/api/Country;->cid:J

    long-to-int p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getCountryPosition()I
    .locals 5

    .line 738
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 740
    sget-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Country;

    .line 741
    iget-wide v3, v3, Lcom/perm/kate/api/Country;->cid:J

    long-to-int v4, v3

    .line 742
    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getProfileInfoInThread()V
    .locals 2

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 202
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/EditProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditProfileActivity$2;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadCitiesByCountry(I)V
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 701
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->fillCities(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 704
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->getCountryByPosition(I)I

    move-result p1

    .line 705
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/EditProfileActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/EditProfileActivity$24;-><init>(Lcom/perm/kate/EditProfileActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 710
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadCountries(I)V
    .locals 2

    const/4 v0, 0x1

    .line 635
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 636
    invoke-direct {p0, v0}, Lcom/perm/kate/EditProfileActivity;->disableCountriesSpinner(Z)V

    .line 637
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/EditProfileActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/EditProfileActivity$21;-><init>(Lcom/perm/kate/EditProfileActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 642
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onCancelRequestInUiThread()V
    .locals 1

    .line 598
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 600
    :cond_0
    new-instance v0, Lcom/perm/kate/EditProfileActivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$19;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private performClickCountriesSpinner()V
    .locals 4

    .line 689
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    return-void

    .line 691
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 692
    new-instance v1, Lcom/perm/kate/EditProfileActivity$23;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditProfileActivity$23;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveInThread()V
    .locals 2

    const/4 v0, 0x1

    .line 431
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 432
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/EditProfileActivity$11;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditProfileActivity$11;-><init>(Lcom/perm/kate/EditProfileActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 443
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setEnabledButtonsInUI(Z)V
    .locals 1

    .line 142
    new-instance v0, Lcom/perm/kate/EditProfileActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/EditProfileActivity$1;-><init>(Lcom/perm/kate/EditProfileActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateBdateButtonLabel()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 401
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 403
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMMM yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0f024f

    .line 406
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->btn_bdate:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateValueFields()V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_first_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->first_name:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->last_name:Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_maiden_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->maiden_name:Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_sex:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_sex:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sex:Ljava/lang/Integer;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_status:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_status:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->relation:Ljava/lang/Integer;

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity;->birth_day:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity;->birth_month:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity;->birth_year:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate:Ljava/lang/String;

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_bdate_visibility:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate_visibility:Ljava/lang/Integer;

    .line 459
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 460
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/EditProfileActivity;->getCountryByPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->country_id:Ljava/lang/Integer;

    .line 461
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 462
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

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 464
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->city_id:Ljava/lang/Integer;

    .line 466
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->ed_hometown:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->home_town:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 543
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "com.perm.kate.member_id"

    const-wide/16 v0, 0x0

    .line 545
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 547
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/EditProfileActivity;->UpdateRelationPartner(J)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006f

    .line 93
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f01ef

    .line 94
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 95
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    const p1, 0x7f09037f

    .line 97
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_new_name:Landroid/widget/TextView;

    const p1, 0x7f09037c

    .line 98
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_cancel_request:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_request_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 101
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->btn_cancel:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cancel_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090078

    .line 103
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->btn_save:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->save_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900ff

    .line 106
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->ed_first_name:Landroid/widget/EditText;

    const p1, 0x7f090101

    .line 107
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->ed_last_name:Landroid/widget/EditText;

    const p1, 0x7f090103

    .line 108
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->ed_maiden_name:Landroid/widget/EditText;

    const p1, 0x7f0901d2

    .line 109
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->ll_edited_values:Landroid/view/View;

    const p1, 0x7f0902f6

    .line 111
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->sp_sex:Landroid/widget/Spinner;

    .line 112
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sex_change_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f0902f8

    .line 113
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->sp_status:Landroid/widget/Spinner;

    .line 114
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->status_change_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f090066

    .line 115
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->btn_bdate:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->bdate_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902e0

    .line 117
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->sp_bdate_visibility:Landroid/widget/Spinner;

    const p1, 0x7f0902e9

    .line 118
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->sp_country:Landroid/widget/Spinner;

    .line 119
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_country_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f0902e4

    .line 120
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    .line 121
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city_watcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f090100

    .line 123
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->ed_hometown:Landroid/widget/EditText;

    const p1, 0x7f0901f5

    .line 125
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner:Landroid/widget/LinearLayout;

    const p1, 0x7f0901f6

    .line 126
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->ll_relation_partner_buttons:Landroid/widget/LinearLayout;

    const p1, 0x7f0903d5

    .line 127
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    const p1, 0x7f09037d

    .line 128
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_change_partner:Landroid/widget/TextView;

    const p1, 0x7f09037e

    .line 129
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_delete_partner:Landroid/widget/TextView;

    .line 130
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity;->tv_relation_partner:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->change_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_change_partner:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->change_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity;->tv_label_delete_partner:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->delete_relation_partner_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 134
    invoke-direct {p0, p1}, Lcom/perm/kate/EditProfileActivity;->setEnabledButtonsInUI(Z)V

    .line 136
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->fillCountries()V

    .line 137
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->displayNameFromCache()V

    .line 138
    invoke-direct {p0}, Lcom/perm/kate/EditProfileActivity;->getProfileInfoInThread()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity;->sp_city:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity;->sp_city_watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lcom/perm/kate/EditProfileActivity;->cities_handler:Landroid/os/Handler;

    .line 835
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method
