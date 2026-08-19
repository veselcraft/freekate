.class public Lcom/perm/kate/SearchParamsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "SearchParamsActivity.java"


# static fields
.field public static c1:I

.field public static c2:I

.field private static city_query:Ljava/lang/String;

.field public static countries:Ljava/util/ArrayList;

.field public static countries_loaded:Z

.field public static full_countries_loaded:Z

.field static univers:Ljava/util/ArrayList;


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

.field private ed_position:Landroid/widget/EditText;

.field private ed_religion:Landroid/widget/EditText;

.field private firstForCity:Z

.field private handler:Landroid/os/Handler;

.field private has_photo:Ljava/lang/Integer;

.field private hometown:Ljava/lang/String;

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

.field private sp_univers:Landroid/widget/Spinner;

.field private startCitySearchRunnable:Ljava/lang/Runnable;

.field private status:Ljava/lang/Integer;

.field private univer:J

.field private university:Ljava/lang/Integer;

.field private university_country:Ljava/lang/Integer;

.field private university_year:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$_TDjassPcf3oxQIoxM9bkm27sz4(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->lambda$downloadUnivers$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 84
    sput-boolean v0, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    .line 85
    sput-boolean v0, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/SearchParamsActivity;->univers:Ljava/util/ArrayList;

    const/4 v0, 0x4

    .line 87
    sput v0, Lcom/perm/kate/SearchParamsActivity;->c1:I

    const/16 v0, 0x12

    .line 88
    sput v0, Lcom/perm/kate/SearchParamsActivity;->c2:I

    const/4 v0, 0x0

    .line 95
    sput-object v0, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    .line 59
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    .line 60
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lcom/perm/kate/SearchParamsActivity;->univer:J

    .line 62
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->university_country:Ljava/lang/Integer;

    .line 64
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->university:Ljava/lang/Integer;

    .line 65
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->university_year:Ljava/lang/Integer;

    .line 66
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    .line 67
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    .line 68
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    .line 69
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    .line 70
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    .line 71
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    .line 72
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    .line 73
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    .line 74
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    .line 75
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->school_country:Ljava/lang/Integer;

    .line 76
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->school_city:Ljava/lang/Integer;

    .line 77
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->school:Ljava/lang/Integer;

    .line 78
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->school_year:Ljava/lang/Integer;

    .line 79
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    .line 90
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/perm/kate/SearchParamsActivity;->noAllowSearchCity:Z

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lcom/perm/kate/SearchParamsActivity;->showDropDown:Z

    .line 175
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchParamsActivity$1;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->action_listener:Landroid/widget/TextView$OnEditorActionListener;

    .line 295
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchParamsActivity$2;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 302
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchParamsActivity$3;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->clear_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 310
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchParamsActivity$4;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    .line 324
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchParamsActivity$5;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 342
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchParamsActivity$6;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 403
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$8;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchParamsActivity$8;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown_watcher:Landroid/text/TextWatcher;

    .line 425
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$9;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchParamsActivity$9;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->startCitySearchRunnable:Ljava/lang/Runnable;

    .line 475
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$10;

    invoke-direct {v1, p0, p0}, Lcom/perm/kate/SearchParamsActivity$10;-><init>(Lcom/perm/kate/SearchParamsActivity;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->cities_callback:Lcom/perm/kate/session/Callback;

    .line 493
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$11;

    invoke-direct {v1, p0, p0}, Lcom/perm/kate/SearchParamsActivity$11;-><init>(Lcom/perm/kate/SearchParamsActivity;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->countries_callback:Lcom/perm/kate/session/Callback;

    .line 529
    iput-boolean v0, p0, Lcom/perm/kate/SearchParamsActivity;->firstForCity:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->onSearch()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->clearValues()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/SearchParamsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/SearchParamsActivity;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/perm/kate/SearchParamsActivity;->noAllowSearchCity:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/perm/kate/SearchParamsActivity;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/perm/kate/SearchParamsActivity;->noAllowSearchCity:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->showHideUniver()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->downloadUnivers()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->startHandlerDialogsSearch()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/perm/kate/SearchParamsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchParamsActivity;->fillCities(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/SearchParamsActivity;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/perm/kate/SearchParamsActivity;->firstForCity:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->showCityByCodeFromIntent()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->fillCountries()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->setViews()V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/SearchParamsActivity;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchParamsActivity;->disableCountriesSpinner(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->performClickCountriesSpinner()V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/SearchParamsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchParamsActivity;->cities_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/perm/kate/SearchParamsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchParamsActivity;->countries_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->fillUniversSpinner()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/SearchParamsActivity;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchParamsActivity;->loadCountries(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/perm/kate/SearchParamsActivity;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/perm/kate/SearchParamsActivity;->showDropDown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/SearchParamsActivity;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchParamsActivity;->loadCitiesByCountry(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->checkCityVisibility()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    sput-object p0, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/perm/kate/SearchParamsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    return-object p1
.end method

.method private checkCityVisibility()V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 470
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    if-nez v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private clearValues()V
    .locals 3

    const/4 v0, 0x0

    .line 605
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    .line 606
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    const-wide/16 v1, 0x0

    .line 607
    iput-wide v1, p0, Lcom/perm/kate/SearchParamsActivity;->univer:J

    .line 608
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 609
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    .line 611
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    .line 612
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    .line 613
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    .line 614
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    .line 615
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    .line 616
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    .line 617
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    .line 619
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    .line 620
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    .line 622
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    .line 623
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    .line 624
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    .line 626
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    .line 627
    sput-object v1, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    return-void
.end method

.method private disableCountriesSpinner(Z)V
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 715
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method

.method private downloadUnivers()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/SearchParamsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchParamsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 380
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private fillCities(Ljava/util/ArrayList;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    :cond_0
    sget-object p1, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/perm/kate/SearchParamsActivity;->fillCitiesSpinner(Z)V

    return-void
.end method

.method private fillCitiesSpinner(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 232
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/City;

    iget-object v1, v1, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 235
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 237
    :cond_1
    new-instance p1, Lcom/perm/kate/CitySpinnerAdapter;

    const v0, 0x7f0c0041

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0, v1}, Lcom/perm/kate/CitySpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 238
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    :goto_1
    iget-boolean p1, p0, Lcom/perm/kate/SearchParamsActivity;->showDropDown:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 241
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    :cond_2
    return-void
.end method

.method private fillCountries()V
    .locals 5

    .line 187
    sget-boolean v0, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    new-instance v0, Lcom/perm/kate/api/Country;

    invoke-direct {v0}, Lcom/perm/kate/api/Country;-><init>()V

    const-wide/16 v1, 0x1

    .line 190
    iput-wide v1, v0, Lcom/perm/kate/api/Country;->cid:J

    const v1, 0x7f0f02a5

    .line 191
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 192
    new-instance v1, Lcom/perm/kate/api/Country;

    invoke-direct {v1}, Lcom/perm/kate/api/Country;-><init>()V

    const-wide/16 v2, 0x2

    .line 193
    iput-wide v2, v1, Lcom/perm/kate/api/Country;->cid:J

    const v2, 0x7f0f02e7

    .line 194
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 195
    new-instance v2, Lcom/perm/kate/api/Country;

    invoke-direct {v2}, Lcom/perm/kate/api/Country;-><init>()V

    const-wide/16 v3, 0x3

    .line 196
    iput-wide v3, v2, Lcom/perm/kate/api/Country;->cid:J

    const v3, 0x7f0f01ae

    .line 197
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    .line 198
    sget-object v3, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->fillCountriesSpinner()V

    return-void
.end method

.method private fillCountriesSpinner()V
    .locals 7

    .line 208
    sget-boolean v0, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 210
    :goto_0
    sget-object v2, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    .line 211
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    .line 212
    aput-object v4, v3, v5

    :goto_1
    sub-int v4, v2, v0

    if-ge v5, v4, :cond_1

    add-int/lit8 v4, v5, 0x1

    .line 214
    sget-object v6, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Country;

    iget-object v5, v5, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    move v5, v4

    goto :goto_1

    .line 215
    :cond_1
    sget-boolean v0, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    if-nez v0, :cond_2

    sub-int/2addr v2, v1

    const v0, 0x7f0f0242

    .line 216
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 217
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 219
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private fillSpinners()V
    .locals 10

    const/4 v0, 0x1

    .line 246
    invoke-direct {p0, v0}, Lcom/perm/kate/SearchParamsActivity;->fillCitiesSpinner(Z)V

    const/16 v1, 0x44

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x43

    if-ge v4, v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v4, v4, 0xe

    .line 253
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    move v4, v5

    goto :goto_0

    .line 254
    :cond_0
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v4, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 255
    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 256
    iget-object v6, p0, Lcom/perm/kate/SearchParamsActivity;->sp_from_ago:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 257
    iget-object v6, p0, Lcom/perm/kate/SearchParamsActivity;->sp_to_ago:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 259
    iget v4, p0, Lcom/perm/kate/SearchParamsActivity;->current_year:I

    add-int/lit8 v6, v4, -0xe

    add-int/lit16 v4, v4, -0x779

    .line 261
    new-array v7, v4, [Ljava/lang/String;

    .line 262
    aput-object v3, v7, v2

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v4, -0x1

    if-ge v8, v9, :cond_1

    add-int/lit8 v9, v8, 0x1

    sub-int v8, v6, v8

    .line 264
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    move v8, v9

    goto :goto_1

    .line 265
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v5, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 267
    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_year:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v4, 0x0

    :goto_2
    const/16 v6, 0xc

    if-ge v4, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 273
    invoke-virtual {p0, v4}, Lcom/perm/kate/SearchParamsActivity;->getMonth(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    goto :goto_2

    .line 274
    :cond_2
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-direct {v4, p0, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 276
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_month:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    :goto_3
    const/16 v3, 0x1f

    if-ge v2, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 282
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_3

    .line 283
    :cond_3
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 285
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_day:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 288
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->fillUniversSpinner()V

    return-void
.end method

.method private fillUniversSpinner()V
    .locals 5

    .line 388
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->univers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_univers:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void

    .line 393
    :cond_0
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->univers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 394
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    .line 395
    aput-object v4, v2, v3

    :goto_0
    if-ge v1, v0, :cond_1

    .line 397
    sget-object v3, Lcom/perm/kate/SearchParamsActivity;->univers:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/City;

    iget-object v3, v3, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 399
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 400
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_univers:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private getCountryByPosition(I)I
    .locals 2

    .line 664
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 665
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Country;

    .line 666
    iget-wide v0, p1, Lcom/perm/kate/api/Country;->cid:J

    long-to-int p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getCountryPosition()I
    .locals 5

    .line 672
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 674
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

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

    .line 675
    iget-wide v3, v3, Lcom/perm/kate/api/Country;->cid:J

    long-to-int v4, v3

    .line 676
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

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

.method private getDataIntentFromValues()Landroid/content/Intent;
    .locals 4

    .line 439
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 440
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.sort"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 441
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.city"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 442
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.country"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 443
    iget-wide v1, p0, Lcom/perm/kate/SearchParamsActivity;->univer:J

    const-string v3, "univer"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    const-string v2, "com.perm.kate.hometown"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->university_country:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.university_country"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 446
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->university:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.university"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->university_year:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.university_year"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.sex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 449
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 450
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.age_from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.age_to"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.birth_day"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 453
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.birth_month"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 454
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.birth_year"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 455
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.online"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 456
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.has_photo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->school_country:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.school_country"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 458
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->school_city:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.school_city"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 459
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->school:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.school"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 460
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->school_year:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.school_year"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    const-string v2, "com.perm.kate.religion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    const-string v2, "com.perm.kate.company"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    const-string v2, "com.perm.kate.position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    const-string v2, "com.perm.kate.label_for_button"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private synthetic lambda$downloadUnivers$0()V
    .locals 3

    .line 371
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/perm/kate/SearchParamsActivity$7;

    invoke-direct {v2, p0, p0}, Lcom/perm/kate/SearchParamsActivity$7;-><init>(Lcom/perm/kate/SearchParamsActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/perm/kate/session/Session;->getUniversities(ILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private loadCitiesByCountry(I)V
    .locals 3

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 549
    invoke-direct {p0, v0}, Lcom/perm/kate/SearchParamsActivity;->fillCities(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 552
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchParamsActivity;->getCountryByPosition(I)I

    move-result p1

    .line 553
    sget-object v1, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    .line 554
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/perm/kate/SearchParamsActivity$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/perm/kate/SearchParamsActivity$12;-><init>(Lcom/perm/kate/SearchParamsActivity;ILjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 559
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadCountries(I)V
    .locals 2

    const/4 v0, 0x1

    .line 563
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 564
    invoke-direct {p0, v0}, Lcom/perm/kate/SearchParamsActivity;->disableCountriesSpinner(Z)V

    .line 565
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/SearchParamsActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/SearchParamsActivity$13;-><init>(Lcom/perm/kate/SearchParamsActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 570
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onSearch()V
    .locals 2

    .line 318
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->readValues()V

    .line 319
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->setLabelForButton()V

    .line 320
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->getDataIntentFromValues()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private performClickCountriesSpinner()V
    .locals 4

    .line 719
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    return-void

    .line 721
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 722
    new-instance v1, Lcom/perm/kate/SearchParamsActivity$14;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchParamsActivity$14;-><init>(Lcom/perm/kate/SearchParamsActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private readValues()V
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sort:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    .line 632
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/SearchParamsActivity;->getCountryByPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    .line 633
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_univers:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 634
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->univers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_univers:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/City;

    iget-wide v0, v0, Lcom/perm/kate/api/City;->cid:J

    iput-wide v0, p0, Lcom/perm/kate/SearchParamsActivity;->univer:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 636
    iput-wide v0, p0, Lcom/perm/kate/SearchParamsActivity;->univer:J

    .line 638
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    goto :goto_1

    .line 643
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    .line 644
    iput-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    .line 646
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sex:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    .line 647
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_status:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    .line 648
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_from_ago:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_from_ago:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    .line 649
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_to_ago:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_to_ago:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    .line 650
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_day:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_day:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    .line 651
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_month:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_month:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    .line 652
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_year:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_7

    iget v0, p0, Lcom/perm/kate/SearchParamsActivity;->current_year:I

    add-int/lit8 v0, v0, -0xd

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_year:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    sub-int v2, v0, v1

    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    .line 654
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_online:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    .line 655
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_photo:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    .line 657
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_religion:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_company:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_position:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    return-void
.end method

.method private setLabelForButton()V
    .locals 4

    const/4 v0, 0x0

    .line 685
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    .line 686
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 687
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Country;

    .line 688
    iget-wide v2, v1, Lcom/perm/kate/api/Country;->cid:J

    long-to-int v3, v2

    .line 689
    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 690
    iget-object v0, v1, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 697
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    goto :goto_0

    .line 700
    :cond_2
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    .line 705
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 706
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    .line 707
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    .line 708
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->label_for_button:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method private setViews()V
    .locals 8

    .line 574
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sort:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 575
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->getCountryPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 576
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/perm/kate/SearchParamsActivity;->noAllowSearchCity:Z

    .line 579
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sex:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 580
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_status:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 581
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_from_ago:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 582
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_to_ago:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 583
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_day:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 584
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_month:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 585
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_year:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4

    iget v2, p0, Lcom/perm/kate/SearchParamsActivity;->current_year:I

    add-int/lit8 v2, v2, -0xd

    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v2, v4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 587
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_online:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 588
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_photo:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 590
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_religion:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_company:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_position:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 595
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->showHideUniver()V

    .line 598
    iget-wide v1, p0, Lcom/perm/kate/SearchParamsActivity;->univer:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    .line 599
    sget-object v1, Lcom/perm/kate/SearchParamsActivity;->univers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/City;

    .line 600
    iget-wide v3, v2, Lcom/perm/kate/api/City;->cid:J

    iget-wide v5, p0, Lcom/perm/kate/SearchParamsActivity;->univer:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_7

    .line 601
    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity;->sp_univers:Landroid/widget/Spinner;

    sget-object v4, Lcom/perm/kate/SearchParamsActivity;->univers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_6

    :cond_8
    return-void
.end method

.method private showCityByCodeFromIntent()V
    .locals 5

    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Lcom/perm/kate/SearchParamsActivity;->firstForCity:Z

    .line 532
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.city"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/City;

    .line 535
    iget-wide v3, v2, Lcom/perm/kate/api/City;->cid:J

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 536
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 537
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    iget-object v2, v2, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 539
    iput-boolean v0, p0, Lcom/perm/kate/SearchParamsActivity;->noAllowSearchCity:Z

    .line 540
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->showHideUniver()V

    :cond_1
    return-void
.end method

.method private showHideUniver()V
    .locals 2

    const v0, 0x7f0903fb

    .line 384
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startHandlerDialogsSearch()V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->startCitySearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 422
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity;->startCitySearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getMonth(I)Ljava/lang/String;
    .locals 1

    .line 292
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 103
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c010e

    .line 104
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f02ac

    .line 105
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090091

    .line 106
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->btn_search:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006f

    .line 108
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->btn_clear:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->clear_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 110
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->btn_cancel:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.perm.kate.sort"

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sort:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.city"

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->city:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.country"

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->country:Ljava/lang/Integer;

    const-wide/16 v2, 0x0

    const-string v0, "univer"

    .line 118
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/SearchParamsActivity;->univer:J

    const-string v0, "com.perm.kate.hometown"

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->hometown:Ljava/lang/String;

    const-string v0, "com.perm.kate.university_country"

    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->university_country:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.university"

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->university:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.university_year"

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->university_year:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.sex"

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sex:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.status"

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->status:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.age_from"

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_from:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.age_to"

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->age_to:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.birth_day"

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_day:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.birth_month"

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_month:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.birth_year"

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->birth_year:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.online"

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->online:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.has_photo"

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->has_photo:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.school_country"

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->school_country:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.school_city"

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->school_city:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.school"

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->school:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.school_year"

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->school_year:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.religion"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->religion:Ljava/lang/String;

    const-string v0, "com.perm.kate.company"

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->company:Ljava/lang/String;

    const-string v0, "com.perm.kate.position"

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->position:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 140
    sput-object p1, Lcom/perm/kate/SearchParamsActivity;->city_query:Ljava/lang/String;

    :goto_0
    const p1, 0x7f0902f7

    .line 142
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sort:Landroid/widget/Spinner;

    const p1, 0x7f0902e9

    .line 143
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country:Landroid/widget/Spinner;

    .line 144
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->sp_country_listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f0903fa

    .line 145
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_univers:Landroid/widget/Spinner;

    const p1, 0x7f090100

    .line 146
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    .line 147
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown_watcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_hometown:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->action_listener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p1, 0x7f0902f6

    .line 151
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_sex:Landroid/widget/Spinner;

    const p1, 0x7f0902f8

    .line 152
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_status:Landroid/widget/Spinner;

    const p1, 0x7f0902ee

    .line 153
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_from_ago:Landroid/widget/Spinner;

    const p1, 0x7f0902fa

    .line 154
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_to_ago:Landroid/widget/Spinner;

    const p1, 0x7f0900b0

    .line 156
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_online:Landroid/widget/CheckBox;

    const p1, 0x7f0900b1

    .line 157
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->cb_only_photo:Landroid/widget/CheckBox;

    const p1, 0x7f0902de

    .line 158
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_day:Landroid/widget/Spinner;

    const p1, 0x7f0902df

    .line 159
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_month:Landroid/widget/Spinner;

    const p1, 0x7f0902e1

    .line 160
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->sp_birth_year:Landroid/widget/Spinner;

    const p1, 0x7f09010a

    .line 162
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_religion:Landroid/widget/EditText;

    const p1, 0x7f0900fc

    .line 163
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_company:Landroid/widget/EditText;

    const p1, 0x7f090108

    .line 164
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity;->ed_position:Landroid/widget/EditText;

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 168
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/SearchParamsActivity;->current_year:I

    .line 169
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->fillCountries()V

    .line 170
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->fillSpinners()V

    .line 171
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->setViews()V

    .line 172
    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity;->checkCityVisibility()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 731
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->handler:Landroid/os/Handler;

    .line 732
    iput-object v0, p0, Lcom/perm/kate/SearchParamsActivity;->startCitySearchRunnable:Ljava/lang/Runnable;

    .line 733
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method
