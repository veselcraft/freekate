.class Lcom/perm/kate/EditProfileActivity$16;
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

    .line 564
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$16;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 567
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$16;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/EditProfileActivity;->access$400(Lcom/perm/kate/EditProfileActivity;Z)V

    .line 568
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$16;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$3000(Lcom/perm/kate/EditProfileActivity;)V

    return-void
.end method
