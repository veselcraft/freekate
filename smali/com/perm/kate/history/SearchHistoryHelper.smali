.class public Lcom/perm/kate/history/SearchHistoryHelper;
.super Ljava/lang/Object;
.source "SearchHistoryHelper.java"


# static fields
.field private static HISTORY_SIZE:I

.field private static mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0xa

    sput v0, Lcom/perm/kate/history/SearchHistoryHelper;->HISTORY_SIZE:I

    return-void
.end method

.method public static addItem(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "item"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/perm/kate/history/SearchHistoryHelper;->isSaveSearchesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    invoke-static {p1}, Lcom/perm/kate/history/SearchHistoryHelper;->initItems(Landroid/content/Context;)V

    .line 51
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    :cond_2
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/history/SearchHistoryHelper;->save(Ljava/util/ArrayList;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static clearHistory(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/perm/kate/history/SearchHistoryHelper;->initItems(Landroid/content/Context;)V

    .line 60
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/perm/kate/history/SearchHistoryHelper;->save(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public static getItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lcom/perm/kate/history/SearchHistoryHelper;->initItems(Landroid/content/Context;)V

    .line 66
    sget-object v0, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static initItems(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-object v3, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    .line 19
    invoke-static {p0}, Lcom/perm/kate/history/SearchHistoryHelper;->loadSearchHistory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "str_items":Ljava/lang/String;
    const-string v3, ";;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "items":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 23
    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 24
    sget-object v3, Lcom/perm/kate/history/SearchHistoryHelper;->mItems:Ljava/util/ArrayList;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/String;
    .end local v2    # "str_items":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static isSaveSearchesEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "save_searches"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static loadSearchHistory(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-string v1, "search_history_pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "key_search_history"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static save(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ""

    .line 32
    .local v2, "str_items":Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    sget v4, Lcom/perm/kate/history/SearchHistoryHelper;->HISTORY_SIZE:I

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_0

    .line 43
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/String;
    :cond_2
    invoke-static {p1, v2}, Lcom/perm/kate/history/SearchHistoryHelper;->saveSearchHistory(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private static saveSearchHistory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str_items"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v1, "search_history_pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_search_history"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method
