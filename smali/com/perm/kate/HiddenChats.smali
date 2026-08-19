.class public abstract Lcom/perm/kate/HiddenChats;
.super Ljava/lang/Object;
.source "HiddenChats.java"


# static fields
.field private static hidden_chats:Ljava/util/ArrayList; = null

.field static locked:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static add(J)V
    .locals 1

    .line 25
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/perm/kate/HiddenChats;->initChats()V

    .line 28
    :cond_0
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {}, Lcom/perm/kate/HiddenChats;->saveChats()V

    return-void
.end method

.method static get()Ljava/util/ArrayList;
    .locals 1

    .line 17
    sget-boolean v0, Lcom/perm/kate/HiddenChats;->locked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

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

    return-object v0
.end method

.method static getPin()Ljava/lang/String;
    .locals 3

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
    .locals 7

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    .line 71
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "keep_news"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 74
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    sget-object v4, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isHidden(J)Z
    .locals 1

    .line 47
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/perm/kate/HiddenChats;->initChats()V

    .line 49
    :cond_0
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHiddenNow(J)Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/perm/kate/HiddenChats;->locked:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 43
    :cond_0
    invoke-static {p0, p1}, Lcom/perm/kate/HiddenChats;->isHidden(J)Z

    move-result p0

    return p0
.end method

.method static remove(J)V
    .locals 1

    .line 33
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/perm/kate/HiddenChats;->initChats()V

    .line 35
    :cond_0
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    invoke-static {}, Lcom/perm/kate/HiddenChats;->saveChats()V

    return-void
.end method

.method private static saveChats()V
    .locals 3

    .line 63
    sget-object v0, Lcom/perm/kate/HiddenChats;->hidden_chats:Ljava/util/ArrayList;

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "keep_news"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setPin(Ljava/lang/String;)V
    .locals 2

    .line 59
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keep_names"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
