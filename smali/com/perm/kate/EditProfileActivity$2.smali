.class Lcom/perm/kate/EditProfileActivity$2;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity;->getProfileInfoInThread()V
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

    .line 202
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$2;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 205
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$2;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$200(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity$2;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getProfileInfo(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
