.class Lcom/perm/kate/PrivacyItemActivity$2;
.super Ljava/lang/Thread;
.source "PrivacyItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PrivacyItemActivity;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PrivacyItemActivity;

.field final synthetic val$str_value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/PrivacyItemActivity;Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$2;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    iput-object p2, p0, Lcom/perm/kate/PrivacyItemActivity$2;->val$str_value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity$2;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 238
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity$2;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-static {v1}, Lcom/perm/kate/PrivacyItemActivity;->access$100(Lcom/perm/kate/PrivacyItemActivity;)Lcom/perm/kate/api/PrivacyItem;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity$2;->val$str_value:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity$2;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-static {v3}, Lcom/perm/kate/PrivacyItemActivity;->access$200(Lcom/perm/kate/PrivacyItemActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/PrivacyItemActivity$2;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->setPrivacySettings(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
