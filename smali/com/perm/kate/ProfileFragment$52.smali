.class Lcom/perm/kate/ProfileFragment$52;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1917
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$52;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1920
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$52;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$5100(Landroid/app/Activity;)V

    return-void
.end method
