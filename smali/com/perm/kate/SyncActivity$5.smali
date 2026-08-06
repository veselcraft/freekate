.class Lcom/perm/kate/SyncActivity$5;
.super Ljava/lang/Object;
.source "SyncActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SyncActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SyncActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SyncActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$5;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 192
    iget-object v0, p0, Lcom/perm/kate/SyncActivity$5;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-static {v0}, Lcom/perm/kate/SyncActivity;->access$200(Lcom/perm/kate/SyncActivity;)V

    .line 193
    return-void
.end method
