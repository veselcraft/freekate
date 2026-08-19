.class Lcom/perm/kate/EditProfileActivity$6;
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

    .line 349
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$6;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 353
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$6;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
