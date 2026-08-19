.class Lcom/perm/kate/PrivacyActivity$3;
.super Ljava/lang/Object;
.source "PrivacyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PrivacyActivity;->displayDataInUiThread(Lcom/perm/kate/api/PrivacySettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PrivacyActivity;

.field final synthetic val$ps:Lcom/perm/kate/api/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacySettings;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/perm/kate/PrivacyActivity$3;->this$0:Lcom/perm/kate/PrivacyActivity;

    iput-object p2, p0, Lcom/perm/kate/PrivacyActivity$3;->val$ps:Lcom/perm/kate/api/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/perm/kate/PrivacyActivity$3;->this$0:Lcom/perm/kate/PrivacyActivity;

    iget-object v1, p0, Lcom/perm/kate/PrivacyActivity$3;->val$ps:Lcom/perm/kate/api/PrivacySettings;

    invoke-static {v0, v1}, Lcom/perm/kate/PrivacyActivity;->access$200(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacySettings;)V

    return-void
.end method
