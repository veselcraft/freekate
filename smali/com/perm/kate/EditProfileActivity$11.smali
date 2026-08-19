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

    .line 432
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 437
    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1700(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".0"

    .line 438
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    move-object v10, v1

    .line 441
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1800(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$2000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1300(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1500(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$2100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Long;

    move-result-object v9

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$2200(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v11

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$2300(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$2400(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v13

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$2500(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$2600(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v15

    iget-object v1, v0, Lcom/perm/kate/EditProfileActivity$11;->this$0:Lcom/perm/kate/EditProfileActivity;

    move-object/from16 v16, v1

    invoke-virtual/range {v2 .. v16}, Lcom/perm/kate/session/Session;->saveProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
