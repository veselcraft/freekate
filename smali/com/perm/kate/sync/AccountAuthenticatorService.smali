.class public Lcom/perm/kate/sync/AccountAuthenticatorService;
.super Landroid/app/Service;
.source "AccountAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;
    }
.end annotation


# static fields
.field private static sAccountAuthenticator:Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/sync/AccountAuthenticatorService;->sAccountAuthenticator:Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    return-void
.end method

.method private getAuthenticator()Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/perm/kate/sync/AccountAuthenticatorService;->sAccountAuthenticator:Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;

    invoke-direct {v0, p0}, Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/perm/kate/sync/AccountAuthenticatorService;->sAccountAuthenticator:Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;

    .line 37
    :cond_0
    sget-object v0, Lcom/perm/kate/sync/AccountAuthenticatorService;->sAccountAuthenticator:Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "ret":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/sync/AccountAuthenticatorService;->getAuthenticator()Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 31
    :cond_0
    return-object v0
.end method
