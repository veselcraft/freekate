.class final Lcom/perm/kate/ProfileFragment$53;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileFragment;->displayYouBlacklistedInUiThread(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1864
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$53;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$53;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$5100(Landroid/app/Activity;)V

    .line 1868
    return-void
.end method
