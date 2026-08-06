.class public Lcom/perm/kate/SearchParamsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "SearchParamsActivity.java"


# static fields
.field public static c1:I

.field public static c2:I

.field private static city_query:Ljava/lang/String;

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
.field private action_listener:Landroid/widget/TextView$OnEditorActionListener;

.field private age_from:Ljava/lang/Integer;

.field private age_to:Ljava/lang/Integer;

.field private birth_day:Ljava/lang/Integer;

.field private birth_month:Ljava/lang/Integer;

.field private birth_year:Ljava/lang/Integer;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_clear:Landroid/widget/Button;

.field private btn_search:Landroid/widget/Button;

.field private cancel_OnClickListerer:Landroid/view/View$OnClickListener;

.field private cb_only_online:Landroid/widget/CheckBox;

.field private cb_only_photo:Landroid/widget/CheckBox;

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

.field private city:Ljava/lang/Integer;

.field private clear_OnClickListerer:Landroid/view/View$OnClickListener;

.field private company:Ljava/lang/String;

.field private countries_callback:Lcom/perm/kate/session/Callback;

.field private country:Ljava/lang/Integer;

.field private current_year:I

.field private ed_company:Landroid/widget/EditText;

.field private ed_hometown:Landroid/widget/AutoCompleteTextView;

.field private ed_hometown_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private ed_hometown_watcher:Landroid/text/TextWatcher;

.field private ed_interests:Landroid/widget/EditText;

.field private ed_position:Landroid/widget/EditText;

.field private ed_religion:Landroid/widget/EditText;

.field private firstForCity:Z

.field private handler:Landroid/os/Handler;

.field private has_photo:Ljava/lang/Integer;

.field private hometown:Ljava/lang/String;

.field private interests:Ljava/lang/String;

.field private label_for_button:Ljava/lang/String;

.field private noAllowSearchCity:Z

.field private online:Ljava/lang/Integer;

.field private position:Ljava/lang/String;

.field private religion:Ljava/lang/String;

.field private school:Ljava/lang/Integer;

.field private school_city:Ljava/lang/Integer;

.field private school_country:Ljava/lang/Integer;

.field private school_year:Ljava/lang/Integer;

.field private search_OnClickListener:Landroid/view/View$OnClickListener;

.field private sex:Ljava/lang/Integer;

.field private showDropDown:Z

.field private sort:Ljava/lang/Integer;

.field private sp_birth_day:Landroid/widget/Spinner;

.field private sp_birth_month:Landroid/widget/Spinner;

.field private sp_birth_year:Landroid/widget/Spinner;

.field private sp_country:Landroid/widget/Spinner;

.field private sp_country_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private sp_from_ago:Landroid/widget/Spinner;

.field private sp_sex:Landroid/widget/Spinner;

.field private sp_sort:Landroid/widget/Spinner;

.field private sp_status:Landroid/widget/Spinner;

.field private sp_to_ago:Landroid/widget/Spinner;

.field private startCitySearchRunnable:Ljava/lang/Runnable;

.field private status:Ljava/lang/Integer;

.field private university:Ljava/lang/Integer;

.field private university_country:Ljava/lang/Integer;

.field private university_year:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    .line 84
    sput-boolean v1, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    .line 85
    sput-boolean v1, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    .line 86
    const/4 v0, 0x4

    sput v0, Lcom/perm/kate/SearchParamsActivity;->c1:I

    .line 87
    const/16 v0, 0x12

    sput v0, Lcom/perm/kate/SearchParamsActivity;->c2:I

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    .line 59
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    .line 60
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    .line 61
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->university_country:Ljava/lang/Integer;

    .line 63
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->university:Ljava/lang/Integer;

    .line 64
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->university_year:Ljava/lang/Integer;

    .line 65
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    .line 66
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    .line 67
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    .line 68
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    .line 69
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    .line 70
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    .line 71
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    .line 72
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    .line 73
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    .line 74
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->school_country:Ljava/lang/Integer;

    .line 75
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->school_city:Ljava/lang/Integer;

    .line 76
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->school:Ljava/lang/Integer;

    .line 77
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->school_year:Ljava/lang/Integer;

    .line 78
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->interests:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    .line 89
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->handler:Landroid/os/Handler;

    .line 96
    iput-boolean v2, p0, Lcom/perm/kate/SearchParamsActivity;->noAllowSearchCity:Z

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/SearchParamsActivity;->showDropDown:Z

    .line 174
    new-instance v0, Lcom/perm/kate/SearchParamsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchParamsActivity$1;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->action_listener:Landroid/widget/TextView$OnEditorActionListener;

    .line 291
    new-instance v0, Lcom/perm/kate/SearchParamsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchParamsActivity$2;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 298
    new-instance v0, Lcom/perm/kate/SearchParamsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchParamsActivity$3;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->clear_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 306
    new-instance v0, Lcom/perm/kate/SearchParamsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchParamsActivity$4;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    .line 320
    new-instance v0, Lcom/perm/kate/SearchParamsActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchParamsActivity$5;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 338
    new-instance v0, Lcom/perm/kate/SearchParamsActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchParamsActivity$6;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 358
    new-instance v0, Lcom/perm/kate/SearchParamsActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchParamsActivity$7;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown_watcher:Landroid/text/TextWatcher;

    .line 379
    new-instance v0, Lcom/perm/kate/SearchParamsActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchParamsActivity$8;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->startCitySearchRunnable:Ljava/lang/Runnable;

    .line 429
    new-instance v0, Lcom/perm/kate/SearchParamsActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchParamsActivity$9;-><init>(Lcom/perm/kate/SearchParamsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cities_callback:Lcom/perm/kate/session/Callback;

    .line 447
    new-instance v0, Lcom/perm/kate/SearchParamsActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchParamsActivity$10;-><init>(Lcom/perm/kate/SearchParamsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->countries_callback:Lcom/perm/kate/session/Callback;

    .line 483
    iput-boolean v2, p0, Lcom/perm/kate/SearchParamsActivity;->firstForCity:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->onSearch()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->clearValues()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/SearchParamsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/SearchParamsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/perm/kate/SearchParamsActivity;->noAllowSearchCity:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/perm/kate/SearchParamsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/perm/kate/SearchParamsActivity;->noAllowSearchCity:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->startHandlerDialogsSearch()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/perm/kate/SearchParamsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchParamsActivity;->fillCities(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/SearchParamsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/perm/kate/SearchParamsActivity;->firstForCity:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->showCityByCodeFromIntent()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->fillCountries()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/SearchParamsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchParamsActivity;->disableCountriesSpinner(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->performClickCountriesSpinner()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->setViews()V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/SearchParamsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cities_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/perm/kate/SearchParamsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->countries_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/SearchParamsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchParamsActivity;->loadCountries(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/perm/kate/SearchParamsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/perm/kate/SearchParamsActivity;->showDropDown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/SearchParamsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchParamsActivity;->loadCitiesByCountry(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->checkCityVisibility()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    sput-object p0, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/perm/kate/SearchParamsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchParamsActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    return-object p1
.end method

.method private checkCityVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 424
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 425
    if-nez v0, :cond_0

    .line 426
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :cond_0
    return-void

    .end local v0    # "visible":Z
    :cond_1
    move v0, v1

    .line 423
    goto :goto_0

    .line 424
    .restart local v0    # "visible":Z
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private clearValues()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 551
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    .line 552
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    .line 553
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    .line 554
    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    .line 556
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    .line 557
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    .line 558
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    .line 559
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    .line 560
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    .line 561
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    .line 562
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    .line 564
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    .line 565
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    .line 567
    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    .line 568
    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->interests:Ljava/lang/String;

    .line 569
    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    .line 570
    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    .line 572
    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    .line 573
    sput-object v2, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    .line 574
    return-void
.end method

.method private disableCountriesSpinner(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 652
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
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
    .line 222
    .local p1, "new_cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/City;>;"
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 223
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    :cond_0
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/perm/kate/SearchParamsActivity;->fillCitiesSpinner(Z)V

    .line 226
    return-void
.end method

.method private fillCitiesSpinner(Z)V
    .locals 6
    .param p1, "is_simple"    # Z

    .prologue
    .line 229
    if-eqz p1, :cond_2

    .line 230
    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 231
    .local v2, "cities_values":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 232
    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/City;

    iget-object v4, v4, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v1, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 234
    .local v1, "cities_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    .end local v1    # "cities_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2    # "cities_values":[Ljava/lang/String;
    .end local v3    # "i":I
    :goto_1
    iget-boolean v4, p0, Lcom/perm/kate/SearchParamsActivity;->showDropDown:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 240
    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 241
    :cond_1
    return-void

    .line 236
    :cond_2
    new-instance v0, Lcom/perm/kate/CitySpinnerAdapter;

    const v4, 0x7f03003d

    iget-object v5, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v4, v5}, Lcom/perm/kate/CitySpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 237
    .local v0, "citiesAdapter":Lcom/perm/kate/CitySpinnerAdapter;
    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private fillCountries()V
    .locals 6

    .prologue
    .line 186
    sget-boolean v3, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    if-nez v3, :cond_0

    .line 187
    sget-object v3, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 188
    new-instance v0, Lcom/perm/kate/api/Country;

    invoke-direct {v0}, Lcom/perm/kate/api/Country;-><init>()V

    .line 189
    .local v0, "c1":Lcom/perm/kate/api/Country;
    const-wide/16 v4, 0x1

    iput-wide v4, v0, Lcom/perm/kate/api/Country;->cid:J

    .line 190
    const v3, 0x7f07024b

    invoke-virtual {p0, v3}, Lcom/perm/kate/SearchParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 191
    new-instance v1, Lcom/perm/kate/api/Country;

    invoke-direct {v1}, Lcom/perm/kate/api/Country;-><init>()V

    .line 192
    .local v1, "c2":Lcom/perm/kate/api/Country;
    const-wide/16 v4, 0x2

    iput-wide v4, v1, Lcom/perm/kate/api/Country;->cid:J

    .line 193
    const v3, 0x7f070290

    invoke-virtual {p0, v3}, Lcom/perm/kate/SearchParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 194
    new-instance v2, Lcom/perm/kate/api/Country;

    invoke-direct {v2}, Lcom/perm/kate/api/Country;-><init>()V

    .line 195
    .local v2, "c3":Lcom/perm/kate/api/Country;
    const-wide/16 v4, 0x3

    iput-wide v4, v2, Lcom/perm/kate/api/Country;->cid:J

    .line 196
    const v3, 0x7f070145

    invoke-virtual {p0, v3}, Lcom/perm/kate/SearchParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 197
    sget-object v3, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v3, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v3, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v0    # "c1":Lcom/perm/kate/api/Country;
    .end local v1    # "c2":Lcom/perm/kate/api/Country;
    .end local v2    # "c3":Lcom/perm/kate/api/Country;
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->fillCountriesSpinner()V

    goto :goto_0
.end method

.method private fillCountriesSpinner()V
    .locals 7

    .prologue
    .line 206
    const/4 v2, 0x2

    .line 207
    .local v2, "d":I
    sget-boolean v5, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    if-eqz v5, :cond_0

    .line 208
    const/4 v2, 0x1

    .line 209
    :cond_0
    sget-object v5, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v4, v5, v2

    .line 210
    .local v4, "len":I
    new-array v1, v4, [Ljava/lang/String;

    .line 211
    .local v1, "country_values":[Ljava/lang/String;
    const/4 v5, 0x0

    const v6, 0x7f070520

    invoke-virtual {p0, v6}, Lcom/perm/kate/SearchParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 212
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sub-int v5, v4, v2

    if-ge v3, v5, :cond_1

    .line 213
    add-int/lit8 v6, v3, 0x1

    sget-object v5, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Country;

    iget-object v5, v5, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    aput-object v5, v1, v6

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_1
    sget-boolean v5, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    if-nez v5, :cond_2

    .line 215
    add-int/lit8 v5, v4, -0x1

    const v6, 0x7f0701e7

    invoke-virtual {p0, v6}, Lcom/perm/kate/SearchParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 216
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 217
    .local v0, "country_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 218
    iget-object v5, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 219
    return-void
.end method

.method private fillSpinners()V
    .locals 13

    .prologue
    .line 245
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/perm/kate/SearchParamsActivity;->fillCitiesSpinner(Z)V

    .line 247
    const/16 v10, 0xe

    .line 248
    .local v10, "st":I
    const/16 v9, 0x44

    .line 249
    .local v9, "len":I
    new-array v1, v9, [Ljava/lang/String;

    .line 250
    .local v1, "ago_values":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v1, v11

    .line 251
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v11, 0x43

    if-ge v8, v11, :cond_0

    .line 252
    add-int/lit8 v11, v8, 0x1

    add-int v12, v8, v10

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v11

    .line 251
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 253
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v11, 0x1090008

    invoke-direct {v0, p0, v11, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 254
    .local v0, "ago_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v11, 0x1090009

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 255
    iget-object v11, p0, Lcom/perm/kate/SearchParamsActivity;->sp_from_ago:Landroid/widget/Spinner;

    invoke-virtual {v11, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 256
    iget-object v11, p0, Lcom/perm/kate/SearchParamsActivity;->sp_to_ago:Landroid/widget/Spinner;

    invoke-virtual {v11, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 258
    iget v11, p0, Lcom/perm/kate/SearchParamsActivity;->current_year:I

    add-int/lit8 v10, v11, -0xe

    .line 259
    iget v11, p0, Lcom/perm/kate/SearchParamsActivity;->current_year:I

    add-int/lit16 v9, v11, -0x779

    .line 260
    new-array v7, v9, [Ljava/lang/String;

    .line 261
    .local v7, "birth_year_values":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v7, v11

    .line 262
    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v11, v9, -0x1

    if-ge v8, v11, :cond_1

    .line 263
    add-int/lit8 v11, v8, 0x1

    sub-int v12, v10, v8

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    .line 262
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 264
    :cond_1
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v11, 0x1090008

    invoke-direct {v6, p0, v11, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 265
    .local v6, "birth_year_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v11, 0x1090009

    invoke-virtual {v6, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 266
    iget-object v11, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_year:Landroid/widget/Spinner;

    invoke-virtual {v11, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 267
    const/4 v10, 0x1

    .line 268
    const/16 v9, 0xd

    .line 269
    new-array v5, v9, [Ljava/lang/String;

    .line 270
    .local v5, "birth_month_values":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v5, v11

    .line 271
    const/4 v8, 0x0

    :goto_2
    const/16 v11, 0xc

    if-ge v8, v11, :cond_2

    .line 272
    add-int/lit8 v11, v8, 0x1

    add-int v12, v10, v8

    invoke-virtual {p0, v12}, Lcom/perm/kate/SearchParamsActivity;->getMonth(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    .line 271
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 273
    :cond_2
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v11, 0x1090008

    invoke-direct {v4, p0, v11, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 274
    .local v4, "birth_month_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v11, 0x1090009

    invoke-virtual {v4, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 275
    iget-object v11, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_month:Landroid/widget/Spinner;

    invoke-virtual {v11, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 276
    const/4 v10, 0x1

    .line 277
    const/16 v9, 0x20

    .line 278
    new-array v3, v9, [Ljava/lang/String;

    .line 279
    .local v3, "birth_day_values":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v3, v11

    .line 280
    const/4 v8, 0x0

    :goto_3
    const/16 v11, 0x1f

    if-ge v8, v11, :cond_3

    .line 281
    add-int/lit8 v11, v8, 0x1

    add-int v12, v10, v8

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    .line 280
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 282
    :cond_3
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v11, 0x1090008

    invoke-direct {v2, p0, v11, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 283
    .local v2, "birth_day_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v11, 0x1090009

    invoke-virtual {v2, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 284
    iget-object v11, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_day:Landroid/widget/Spinner;

    invoke-virtual {v11, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 285
    return-void
.end method

.method private getCountryByPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 606
    sget-object v1, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    .line 607
    sget-object v1, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Country;

    .line 608
    .local v0, "c":Lcom/perm/kate/api/Country;
    iget-wide v2, v0, Lcom/perm/kate/api/Country;->cid:J

    long-to-int v1, v2

    .line 610
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
    .line 614
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    sget-object v3, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 615
    const/4 v2, 0x0

    .line 616
    .local v2, "p":I
    sget-object v3, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Country;

    .line 617
    .local v0, "c":Lcom/perm/kate/api/Country;
    iget-wide v4, v0, Lcom/perm/kate/api/Country;->cid:J

    long-to-int v1, v4

    .line 618
    .local v1, "cid":I
    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 619
    add-int/lit8 v3, v2, 0x1

    .line 623
    .end local v0    # "c":Lcom/perm/kate/api/Country;
    .end local v1    # "cid":I
    .end local v2    # "p":I
    :goto_1
    return v3

    .line 620
    .restart local v0    # "c":Lcom/perm/kate/api/Country;
    .restart local v1    # "cid":I
    .restart local v2    # "p":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 621
    goto :goto_0

    .line 623
    .end local v0    # "c":Lcom/perm/kate/api/Country;
    .end local v1    # "cid":I
    .end local v2    # "p":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getDataIntentFromValues()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 393
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 394
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.perm.kate.sort"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 395
    const-string v1, "com.perm.kate.city"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 396
    const-string v1, "com.perm.kate.country"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 397
    const-string v1, "com.perm.kate.hometown"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v1, "com.perm.kate.university_country"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->university_country:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 399
    const-string v1, "com.perm.kate.university"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->university:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 400
    const-string v1, "com.perm.kate.university_year"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->university_year:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 401
    const-string v1, "com.perm.kate.sex"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 402
    const-string v1, "com.perm.kate.status"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 403
    const-string v1, "com.perm.kate.age_from"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 404
    const-string v1, "com.perm.kate.age_to"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 405
    const-string v1, "com.perm.kate.birth_day"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 406
    const-string v1, "com.perm.kate.birth_month"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 407
    const-string v1, "com.perm.kate.birth_year"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 408
    const-string v1, "com.perm.kate.online"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 409
    const-string v1, "com.perm.kate.has_photo"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 410
    const-string v1, "com.perm.kate.school_country"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->school_country:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 411
    const-string v1, "com.perm.kate.school_city"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->school_city:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 412
    const-string v1, "com.perm.kate.school"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->school:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 413
    const-string v1, "com.perm.kate.school_year"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->school_year:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 414
    const-string v1, "com.perm.kate.religion"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v1, "com.perm.kate.interests"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->interests:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v1, "com.perm.kate.company"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v1, "com.perm.kate.position"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v1, "com.perm.kate.label_for_button"

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    return-object v0
.end method

.method private loadCitiesByCountry(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 501
    if-gtz p1, :cond_0

    .line 502
    invoke-direct {p0, v0}, Lcom/perm/kate/SearchParamsActivity;->fillCities(Ljava/util/ArrayList;)V

    .line 513
    :goto_0
    return-void

    .line 505
    :cond_0
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->getCountryByPosition(I)I

    move-result v1

    .line 506
    .local v1, "cid":I
    sget-object v2, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    .line 507
    .local v0, "_city_query":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/perm/kate/SearchParamsActivity$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/perm/kate/SearchParamsActivity$11;-><init>(Lcom/perm/kate/SearchParamsActivity;ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 512
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private loadCountries(I)V
    .locals 2
    .param p1, "need_full"    # I

    .prologue
    const/4 v0, 0x1

    .line 516
    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchParamsActivity;->showProgressBar(Z)V

    .line 517
    invoke-direct {p0, v0}, Lcom/perm/kate/SearchParamsActivity;->disableCountriesSpinner(Z)V

    .line 518
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/SearchParamsActivity$12;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/SearchParamsActivity$12;-><init>(Lcom/perm/kate/SearchParamsActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 523
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 524
    return-void
.end method

.method private onSearch()V
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->readValues()V

    .line 315
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->setLabelForButton()V

    .line 316
    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->getDataIntentFromValues()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/SearchParamsActivity;->setResult(ILandroid/content/Intent;)V

    .line 317
    invoke-virtual {p0}, Lcom/perm/kate/SearchParamsActivity;->finish()V

    .line 318
    return-void
.end method

.method private performClickCountriesSpinner()V
    .locals 4

    .prologue
    .line 658
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 666
    :goto_0
    return-void

    .line 660
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 661
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$13;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchParamsActivity$13;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private readValues()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 577
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sort:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    .line 578
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/perm/kate/SearchParamsActivity;->getCountryByPosition(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    .line 579
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 582
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    .line 587
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sex:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    .line 588
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_status:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    .line 589
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_from_ago:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_from_ago:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    .line 590
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_to_ago:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_to_ago:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    .line 591
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_day:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_day:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    .line 592
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_month:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_month:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    .line 593
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_year:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_6

    iget v0, p0, Lcom/perm/kate/SearchParamsActivity;->current_year:I

    add-int/lit8 v0, v0, -0xd

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_year:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    sub-int/2addr v0, v3

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    .line 595
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_online:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    .line 596
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_photo:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    .line 598
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_religion:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_interests:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->interests:Ljava/lang/String;

    .line 600
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_company:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_position:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    .line 603
    return-void

    .line 584
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    .line 585
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 589
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 590
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 591
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 592
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 593
    goto :goto_5

    :cond_7
    move v0, v1

    .line 595
    goto :goto_6

    :cond_8
    move v2, v1

    .line 596
    goto :goto_7
.end method

.method private setLabelForButton()V
    .locals 6

    .prologue
    .line 627
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    .line 628
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 629
    sget-object v3, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Country;

    .line 630
    .local v1, "c":Lcom/perm/kate/api/Country;
    iget-wide v4, v1, Lcom/perm/kate/api/Country;->cid:J

    long-to-int v2, v4

    .line 631
    .local v2, "cid":I
    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 632
    iget-object v3, v1, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    .line 637
    .end local v1    # "c":Lcom/perm/kate/api/Country;
    .end local v2    # "cid":I
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "_city":Ljava/lang/String;
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 639
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    .line 644
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 645
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->interests:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    .line 646
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_4

    .line 647
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    .line 649
    :cond_4
    return-void

    .line 642
    :cond_5
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    goto :goto_0
.end method

.method private setViews()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 527
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sort:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 528
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->getCountryPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 529
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iput-boolean v2, p0, Lcom/perm/kate/SearchParamsActivity;->noAllowSearchCity:Z

    .line 532
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sex:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 533
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_status:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 534
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sp_from_ago:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xd

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 535
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sp_to_ago:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xd

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 536
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_day:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 537
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_month:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 538
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_year:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/perm/kate/SearchParamsActivity;->current_year:I

    add-int/lit8 v0, v0, -0xd

    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v0, v4

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 540
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_online:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_5

    move v0, v2

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 541
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_photo:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_6

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 543
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_religion:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_interests:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->interests:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_company:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_position:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 548
    return-void

    :cond_0
    move v0, v1

    .line 534
    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 535
    goto :goto_1

    :cond_2
    move v0, v1

    .line 536
    goto :goto_2

    :cond_3
    move v0, v1

    .line 537
    goto :goto_3

    :cond_4
    move v0, v1

    .line 538
    goto :goto_4

    :cond_5
    move v0, v1

    .line 540
    goto :goto_5

    :cond_6
    move v2, v1

    .line 541
    goto :goto_6
.end method

.method private showCityByCodeFromIntent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 485
    iput-boolean v5, p0, Lcom/perm/kate/SearchParamsActivity;->firstForCity:Z

    .line 486
    invoke-virtual {p0}, Lcom/perm/kate/SearchParamsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.city"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 487
    .local v0, "_city":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 488
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/City;

    .line 489
    .local v1, "c":Lcom/perm/kate/api/City;
    iget-wide v4, v1, Lcom/perm/kate/api/City;->cid:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 490
    .local v2, "cid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 491
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    iget-object v4, v1, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    .line 493
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/perm/kate/SearchParamsActivity;->noAllowSearchCity:Z

    .line 498
    .end local v1    # "c":Lcom/perm/kate/api/City;
    .end local v2    # "cid":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private startHandlerDialogsSearch()V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->startCitySearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->startCitySearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    return-void
.end method


# virtual methods
.method public getMonth(I)Ljava/lang/String;
    .locals 2
    .param p1, "month"    # I

    .prologue
    .line 288
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v2, 0x7f0300f2

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->setContentView(I)V

    .line 104
    const v2, 0x7f070252

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->setHeaderTitle(I)V

    .line 105
    const v2, 0x7f0e01a1

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->btn_search:Landroid/widget/Button;

    .line 106
    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->btn_search:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v2, 0x7f0e01a0

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->btn_clear:Landroid/widget/Button;

    .line 108
    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->btn_clear:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->clear_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v2, 0x7f0e019b

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->btn_cancel:Landroid/widget/Button;

    .line 110
    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/perm/kate/SearchParamsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 113
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 114
    const-string v2, "com.perm.kate.sort"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    .line 115
    const-string v2, "com.perm.kate.city"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    .line 116
    const-string v2, "com.perm.kate.country"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    .line 117
    const-string v2, "com.perm.kate.hometown"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    .line 118
    const-string v2, "com.perm.kate.university_country"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->university_country:Ljava/lang/Integer;

    .line 119
    const-string v2, "com.perm.kate.university"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->university:Ljava/lang/Integer;

    .line 120
    const-string v2, "com.perm.kate.university_year"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->university_year:Ljava/lang/Integer;

    .line 121
    const-string v2, "com.perm.kate.sex"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    .line 122
    const-string v2, "com.perm.kate.status"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    .line 123
    const-string v2, "com.perm.kate.age_from"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    .line 124
    const-string v2, "com.perm.kate.age_to"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    .line 125
    const-string v2, "com.perm.kate.birth_day"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    .line 126
    const-string v2, "com.perm.kate.birth_month"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    .line 127
    const-string v2, "com.perm.kate.birth_year"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    .line 128
    const-string v2, "com.perm.kate.online"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    .line 129
    const-string v2, "com.perm.kate.has_photo"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    .line 130
    const-string v2, "com.perm.kate.school_country"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->school_country:Ljava/lang/Integer;

    .line 131
    const-string v2, "com.perm.kate.school_city"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->school_city:Ljava/lang/Integer;

    .line 132
    const-string v2, "com.perm.kate.school"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->school:Ljava/lang/Integer;

    .line 133
    const-string v2, "com.perm.kate.school_year"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->school_year:Ljava/lang/Integer;

    .line 134
    const-string v2, "com.perm.kate.religion"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    .line 135
    const-string v2, "com.perm.kate.interests"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->interests:Ljava/lang/String;

    .line 136
    const-string v2, "com.perm.kate.company"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    .line 137
    const-string v2, "com.perm.kate.position"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    .line 141
    :goto_0
    const v2, 0x7f0e0306

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sort:Landroid/widget/Spinner;

    .line 142
    const v2, 0x7f0e0163

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    .line 143
    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 144
    const v2, 0x7f0e0165

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    .line 145
    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown_watcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->action_listener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 149
    const v2, 0x7f0e015a

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sex:Landroid/widget/Spinner;

    .line 150
    const v2, 0x7f0e015b

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sp_status:Landroid/widget/Spinner;

    .line 151
    const v2, 0x7f0e0307

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sp_from_ago:Landroid/widget/Spinner;

    .line 152
    const v2, 0x7f0e0308

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sp_to_ago:Landroid/widget/Spinner;

    .line 154
    const v2, 0x7f0e0309

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_online:Landroid/widget/CheckBox;

    .line 155
    const v2, 0x7f0e030a

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_photo:Landroid/widget/CheckBox;

    .line 156
    const v2, 0x7f0e030f

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_day:Landroid/widget/Spinner;

    .line 157
    const v2, 0x7f0e0310

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_month:Landroid/widget/Spinner;

    .line 158
    const v2, 0x7f0e0311

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_year:Landroid/widget/Spinner;

    .line 160
    const v2, 0x7f0e030e

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->ed_religion:Landroid/widget/EditText;

    .line 161
    const v2, 0x7f0e030b

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->ed_interests:Landroid/widget/EditText;

    .line 162
    const v2, 0x7f0e030c

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->ed_company:Landroid/widget/EditText;

    .line 163
    const v2, 0x7f0e030d

    invoke-virtual {p0, v2}, Lcom/perm/kate/SearchParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->ed_position:Landroid/widget/EditText;

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/perm/kate/SearchParamsActivity;->current_year:I

    .line 168
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->fillCountries()V

    .line 169
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->fillSpinners()V

    .line 170
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->setViews()V

    .line 171
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->checkCityVisibility()V

    .line 172
    return-void

    .line 139
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->handler:Landroid/os/Handler;

    .line 671
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->startCitySearchRunnable:Ljava/lang/Runnable;

    .line 672
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 673
    return-void
.end method
