.class Lcom/perm/kate/UpdateActivity$1;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/UpdateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/UpdateActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/perm/kate/UpdateActivity$1;->this$0:Lcom/perm/kate/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/perm/kate/UpdateActivity$1;->this$0:Lcom/perm/kate/UpdateActivity;

    invoke-static {v0}, Lcom/perm/kate/UpdateActivity;->access$000(Lcom/perm/kate/UpdateActivity;)V

    .line 66
    return-void
.end method
