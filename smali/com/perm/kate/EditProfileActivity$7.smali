.class Lcom/perm/kate/EditProfileActivity$7;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditProfileActivity;
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
    .line 354
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$7;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$7;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$700(Lcom/perm/kate/EditProfileActivity;)V

    .line 359
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$7;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$400(Lcom/perm/kate/EditProfileActivity;Z)V

    .line 360
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$7;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$800(Lcom/perm/kate/EditProfileActivity;)V

    .line 361
    return-void
.end method
