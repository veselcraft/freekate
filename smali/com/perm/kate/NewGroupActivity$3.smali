.class Lcom/perm/kate/NewGroupActivity$3;
.super Ljava/lang/Object;
.source "NewGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewGroupActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity$3;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity$3;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-static {v0}, Lcom/perm/kate/NewGroupActivity;->access$300(Lcom/perm/kate/NewGroupActivity;)V

    .line 72
    return-void
.end method
