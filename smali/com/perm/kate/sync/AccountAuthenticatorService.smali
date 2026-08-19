.class public Lcom/perm/kate/sync/AccountAuthenticatorService;
.super Landroid/app/Service;
.source "AccountAuthenticatorService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;
    }
.end annotation


# static fields
.field private static sAccountAuthenticator:Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getAuthenticator()Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;
    .locals 1

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
    .locals 1

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/sync/AccountAuthenticatorService;->getAuthenticator()Lcom/perm/kate/sync/AccountAuthenticatorService$AccountAuthenticatorImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
