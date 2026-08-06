.class public Lcom/perm/kate/InitialActivity;
.super Landroid/app/Activity;
.source "InitialActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-static {p0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 15
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/perm/kate/InitialActivity;->startActivity(Landroid/content/Intent;)V

    .line 16
    invoke-virtual {p0}, Lcom/perm/kate/InitialActivity;->finish()V

    .line 17
    return-void
.end method
