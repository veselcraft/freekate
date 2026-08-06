.class Lcom/perm/kate/WallFragment$20;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallFragment;->confirmClearWall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 889
    iput-object p1, p0, Lcom/perm/kate/WallFragment$20;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 892
    iget-object v0, p0, Lcom/perm/kate/WallFragment$20;->this$0:Lcom/perm/kate/WallFragment;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/perm/kate/WallFragment;->access$1300(Lcom/perm/kate/WallFragment;I)V

    .line 893
    return-void
.end method
