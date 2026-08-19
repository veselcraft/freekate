.class Lcom/perm/kate/ProfileInfoFragment$23;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$23;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 0

    .line 1006
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$23;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object p1, p1, Lcom/perm/kate/ProfileInfoFragment;->listener:Lcom/perm/kate/ProfileActivityCallback;

    invoke-interface {p1}, Lcom/perm/kate/ProfileActivityCallback;->onAvatarChanged()V

    return-void
.end method
