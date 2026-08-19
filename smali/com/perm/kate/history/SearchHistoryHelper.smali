.class public abstract Lcom/perm/kate/history/SearchHistoryHelper;
.super Ljava/lang/Object;
.source "SearchHistoryHelper.java"


# static fields
.field private static HISTORY_SIZE:I = 0xa

.field private static mItems:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static addItem(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-static {p1}, Lcom/perm/kate/history/SearchHistoryHelper;->isSaveSearchesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 55
    invoke-static {p1}, Lcom/perm/kate/history/SearchHistoryHelper;->initItems(Landroid/content/Context;)V

    .line 56
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    :cond_1
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 59
    sget-object p0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/perm/kate/history/SearchHistoryHelper;->save(Ljava/util/ArrayList;Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static clearHistory(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-static {p0}, Lcom/perm/kate/history/SearchHistoryHelper;->initItems(Landroid/content/Context;)V

    .line 65
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/perm/kate/history/SearchHistoryHelper;->save(Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method

.method public static getItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/perm/kate/history/SearchHistoryHelper;->initItems(Landroid/content/Context;)V

    .line 71
    sget-object p0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static initItems(Landroid/content/Context;)V
    .locals 3

    .line 17
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    .line 19
    invoke-static {p0}, Lcom/perm/kate/history/SearchHistoryHelper;->loadSearchHistory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ";;"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 21
    array-length v0, p0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 22
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 23
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 24
    sget-object v1, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static isSaveSearchesEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "save_searches"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static loadSearchHistory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "search_history_pref"

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key_search_history"

    const-string v1, ""

    .line 78
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reinit(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    .line 32
    invoke-static {p0}, Lcom/perm/kate/history/SearchHistoryHelper;->initItems(Landroid/content/Context;)V

    return-void
.end method

.method private static save(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_2

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    .line 44
    sget v2, Lcom/perm/kate/history/SearchHistoryHelper;->HISTORY_SIZE:I

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    .line 48
    :cond_2
    invoke-static {p1, v0}, Lcom/perm/kate/history/SearchHistoryHelper;->saveSearchHistory(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static saveSearchHistory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "search_history_pref"

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 83
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_search_history"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
