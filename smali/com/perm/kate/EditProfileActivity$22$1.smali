.class Lcom/perm/kate/EditProfileActivity$22$1;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity$22;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/EditProfileActivity$22;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity$22;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$22$1;->this$1:Lcom/perm/kate/EditProfileActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$22$1;->this$1:Lcom/perm/kate/EditProfileActivity$22;

    iget-object v0, v0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$4000(Lcom/perm/kate/EditProfileActivity;)V

    .line 665
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$22$1;->this$1:Lcom/perm/kate/EditProfileActivity$22;

    iget-object v0, v0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$4100(Lcom/perm/kate/EditProfileActivity;Z)V

    .line 666
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$22$1;->this$1:Lcom/perm/kate/EditProfileActivity$22;

    iget-object v0, v0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$4200(Lcom/perm/kate/EditProfileActivity;)V

    .line 667
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$22$1;->this$1:Lcom/perm/kate/EditProfileActivity$22;

    iget-object v0, v0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$600(Lcom/perm/kate/EditProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$22$1;->this$1:Lcom/perm/kate/EditProfileActivity$22;

    iget-object v0, v0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$4300(Lcom/perm/kate/EditProfileActivity;)V

    :cond_0
    return-void
.end method
