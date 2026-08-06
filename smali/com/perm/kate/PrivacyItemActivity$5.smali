.class Lcom/perm/kate/PrivacyItemActivity$5;
.super Ljava/lang/Object;
.source "PrivacyItemActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PrivacyItemActivity;->enableUiInUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PrivacyItemActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PrivacyItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PrivacyItemActivity;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$5;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity$5;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/PrivacyItemActivity;->access$500(Lcom/perm/kate/PrivacyItemActivity;Z)V

    .line 328
    return-void
.end method
