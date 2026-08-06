.class public Lcom/perm/kate/HiddenChats;
.super Ljava/lang/Object;
.source "HiddenChats.java"


# static fields
.field private static hidden_chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static locked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/perm/kate/HiddenChats;->locked:Z

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    return-void
.end method

.method static add(J)V
    .locals 2
    .param p0, "thread_id"    # J

    .prologue
    .line 25
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/perm/kate/HiddenChats;->initChats()V

    .line 28
    :cond_0
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {}, Lcom/perm/kate/HiddenChats;->saveChats()V

    .line 30
    return-void
.end method

.method static get()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    sget-boolean v0, Lcom/perm/kate/HiddenChats;->locked:Z

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0

    .line 19
    :cond_0
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 20
    invoke-static {}, Lcom/perm/kate/HiddenChats;->initChats()V

    .line 21
    :cond_1
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method static getPin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "keep_names"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initChats()V
    .locals 8

    .prologue
    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    .line 71
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "keep_news"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 74
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    sget-object v5, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static isHidden(J)Z
    .locals 2
    .param p0, "thread_id"    # J

    .prologue
    .line 47
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/perm/kate/HiddenChats;->initChats()V

    .line 49
    :cond_0
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHiddenNow(J)Z
    .locals 2
    .param p0, "thread_id"    # J

    .prologue
    .line 41
    sget-boolean v0, Lcom/perm/kate/HiddenChats;->locked:Z

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/perm/kate/HiddenChats;->isHidden(J)Z

    move-result v0

    goto :goto_0
.end method

.method static remove(J)V
    .locals 2
    .param p0, "thread_id"    # J

    .prologue
    .line 33
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/perm/kate/HiddenChats;->initChats()V

    .line 35
    :cond_0
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    invoke-static {}, Lcom/perm/kate/HiddenChats;->saveChats()V

    .line 37
    return-void
.end method

.method private static saveChats()V
    .locals 3

    .prologue
    .line 63
    const-string v1, ","

    sget-object v2, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "keep_news"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method

.method static setPin(Ljava/lang/String;)V
    .locals 2
    .param p0, "new_pin"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keep_names"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method
