.class Lcom/perm/kate/EditProfileActivity$17;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity;->cancelRequestInThread()V
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
    .line 569
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$17;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    .line 572
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity$17;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v2}, Lcom/perm/kate/EditProfileActivity;->access$3100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Long;

    move-result-object v4

    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity$17;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v2}, Lcom/perm/kate/EditProfileActivity;->access$3200(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v13

    iget-object v14, p0, Lcom/perm/kate/EditProfileActivity$17;->this$0:Lcom/perm/kate/EditProfileActivity;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    invoke-virtual/range {v0 .. v14}, Lcom/perm/kate/session/Session;->saveProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 573
    return-void
.end method
