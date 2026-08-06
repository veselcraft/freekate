.class Lcom/perm/kate/EditProfileActivity$25$1;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity$25;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/EditProfileActivity$25;

.field final synthetic val$new_cities:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity$25;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/EditProfileActivity$25;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$25$1;->this$1:Lcom/perm/kate/EditProfileActivity$25;

    iput-object p2, p0, Lcom/perm/kate/EditProfileActivity$25$1;->val$new_cities:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$25$1;->this$1:Lcom/perm/kate/EditProfileActivity$25;

    iget-object v0, v0, Lcom/perm/kate/EditProfileActivity$25;->this$0:Lcom/perm/kate/EditProfileActivity;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$25$1;->val$new_cities:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$4600(Lcom/perm/kate/EditProfileActivity;Ljava/util/ArrayList;)V

    .line 718
    return-void
.end method
