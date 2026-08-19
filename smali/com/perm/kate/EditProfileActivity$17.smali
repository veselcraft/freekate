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

    .line 574
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$17;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 577
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$17;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$3100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Long;

    move-result-object v4

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$17;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$3200(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v13

    iget-object v14, p0, Lcom/perm/kate/EditProfileActivity$17;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v14}, Lcom/perm/kate/session/Session;->saveProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
