.class Lcom/perm/kate/EditProfileActivity$5;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity;->changeAllowPerformClickWithDelay()V
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

    .line 328
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$5;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$5;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$602(Lcom/perm/kate/EditProfileActivity;Z)Z

    return-void
.end method
