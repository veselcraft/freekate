.class Lcom/perm/kate/EditProfileActivity$11;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity;->saveInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 434
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$1700(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;

    move-result-object v8

    .line 435
    .local v8, "bdate_param":Ljava/lang/String;
    const-string v0, ".0"

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v8, 0x0

    .line 438
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1800(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v2}, Lcom/perm/kate/EditProfileActivity;->access$1900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v3}, Lcom/perm/kate/EditProfileActivity;->access$2000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v5}, Lcom/perm/kate/EditProfileActivity;->access$1300(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v6}, Lcom/perm/kate/EditProfileActivity;->access$1500(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v7}, Lcom/perm/kate/EditProfileActivity;->access$2100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Long;

    move-result-object v7

    iget-object v9, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v9}, Lcom/perm/kate/EditProfileActivity;->access$2200(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v10}, Lcom/perm/kate/EditProfileActivity;->access$2300(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v11}, Lcom/perm/kate/EditProfileActivity;->access$2400(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v12}, Lcom/perm/kate/EditProfileActivity;->access$2500(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v13}, Lcom/perm/kate/EditProfileActivity;->access$2600(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v13

    iget-object v14, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual/range {v0 .. v14}, Lcom/perm/kate/session/Session;->saveProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 439
    return-void
.end method
