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
    .param p1, "this$0"    # Lcom/perm/kate/PrivacyItemActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$3;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 294
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 295
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity$3;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/PrivacyItemActivity;->showProgressBar(Z)V

    .line 296
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity$3;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-static {v0}, Lcom/perm/kate/PrivacyItemActivity;->access$400(Lcom/perm/kate/PrivacyItemActivity;)V

    .line 297
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 283
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity$3;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/PrivacyItemActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 284
    check-cast v0, Ljava/util/ArrayList;

    .line 285
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity$3;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-static {v1}, Lcom/perm/kate/PrivacyItemActivity;->access$300(Lcom/perm/kate/PrivacyItemActivity;)V

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity$3;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-static {v1}, Lcom/perm/kate/PrivacyItemActivity;->access$400(Lcom/perm/kate/PrivacyItemActivity;)V

    goto :goto_0
.end method
