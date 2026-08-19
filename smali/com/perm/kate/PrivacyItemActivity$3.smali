.class Lcom/perm/kate/PrivacyItemActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "PrivacyItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PrivacyItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PrivacyItemActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PrivacyItemActivity;Landroid/app/Activity;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$3;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 252
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 253
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 254
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$3;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 255
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$3;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-static {p1}, Lcom/perm/kate/PrivacyItemActivity;->access$400(Lcom/perm/kate/PrivacyItemActivity;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 246
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$3;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 247
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$3;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-static {p1}, Lcom/perm/kate/PrivacyItemActivity;->access$300(Lcom/perm/kate/PrivacyItemActivity;)V

    return-void
.end method
