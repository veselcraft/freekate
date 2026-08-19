.class Lcom/perm/kate/EditProfileActivity$4;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity;->displayDataInUiThread(Lcom/perm/kate/api/ProfileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;

.field final synthetic val$profile:Lcom/perm/kate/api/ProfileInfo;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;Lcom/perm/kate/api/ProfileInfo;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$4;->this$0:Lcom/perm/kate/EditProfileActivity;

    iput-object p2, p0, Lcom/perm/kate/EditProfileActivity$4;->val$profile:Lcom/perm/kate/api/ProfileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$4;->this$0:Lcom/perm/kate/EditProfileActivity;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$4;->val$profile:Lcom/perm/kate/api/ProfileInfo;

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$500(Lcom/perm/kate/EditProfileActivity;Lcom/perm/kate/api/ProfileInfo;)V

    return-void
.end method
