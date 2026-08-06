.class Lcom/perm/kate/ProfileFragment$18;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 955
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$18;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 958
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$18;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$2200(Lcom/perm/kate/ProfileFragment;)V

    .line 959
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$18;->this$0:Lcom/perm/kate/ProfileFragment;

    const-string v1, "ava"

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileFragment;->access$1900(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    .line 960
    return-void
.end method
