.class Lcom/perm/kate/GroupBanActivity$8;
.super Ljava/lang/Object;
.source "GroupBanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupBanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBanActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$8;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$8;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v0}, Lcom/perm/kate/GroupBanActivity;->finish()V

    .line 295
    return-void
.end method
