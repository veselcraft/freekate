.class Lcom/perm/kate/EditGroupActivity$6;
.super Ljava/lang/Object;
.source "EditGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$6;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$6;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-virtual {v0}, Lcom/perm/kate/EditGroupActivity;->finish()V

    .line 413
    return-void
.end method
