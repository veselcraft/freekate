.class public Lcom/perm/kate/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/Counter$CounterListener;
    }
.end annotation


# instance fields
.field public listener:Lcom/perm/kate/Counter$CounterListener;

.field private pref_name:Ljava/lang/String;

.field private value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pref_name"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/perm/kate/Counter;->pref_name:Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/Counter;->load()V

    .line 15
    return-void
.end method

.method private load()V
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/Counter;->pref_name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/Counter;->value:I

    .line 44
    return-void
.end method

.method private save()V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/Counter;->pref_name:Ljava/lang/String;

    iget v2, p0, Lcom/perm/kate/Counter;->value:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method


# virtual methods
.method public decrease(I)V
    .locals 1
    .param p1, "decrease"    # I

    .prologue
    .line 31
    iget v0, p0, Lcom/perm/kate/Counter;->value:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/perm/kate/Counter;->setValue(I)V

    .line 32
    return-void
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/perm/kate/Counter;->value:I

    return v0
.end method

.method public increase(I)V
    .locals 1
    .param p1, "decrease"    # I

    .prologue
    .line 35
    iget v0, p0, Lcom/perm/kate/Counter;->value:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/perm/kate/Counter;->setValue(I)V

    .line 36
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "new_value"    # I

    .prologue
    .line 22
    if-gez p1, :cond_0

    .line 23
    const/4 p1, 0x0

    .line 24
    :cond_0
    iput p1, p0, Lcom/perm/kate/Counter;->value:I

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/Counter;->save()V

    .line 26
    iget-object v0, p0, Lcom/perm/kate/Counter;->listener:Lcom/perm/kate/Counter$CounterListener;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/perm/kate/Counter;->listener:Lcom/perm/kate/Counter$CounterListener;

    iget v1, p0, Lcom/perm/kate/Counter;->value:I

    invoke-interface {v0, v1}, Lcom/perm/kate/Counter$CounterListener;->changed(I)V

    .line 28
    :cond_1
    return-void
.end method
