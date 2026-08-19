.class Lcom/perm/kate/ProfileFragment$42;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 1689
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$42;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 0

    .line 1692
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$42;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1}, Lcom/perm/kate/ProfileFragment;->refreshInThread()V

    return-void
.end method
