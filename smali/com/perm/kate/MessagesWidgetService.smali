.class public Lcom/perm/kate/MessagesWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "MessagesWidgetService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    new-instance v0, Lcom/perm/kate/StackRemoteViewsFactory;

    invoke-virtual {p0}, Lcom/perm/kate/MessagesWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/perm/kate/StackRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
