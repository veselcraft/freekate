.class Lcom/perm/kate/EditGroupManagerActivity$2;
.super Ljava/lang/Object;
.source "EditGroupManagerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditGroupManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupManagerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$2;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$2;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v0, p2}, Lcom/perm/kate/EditGroupManagerActivity;->access$102(Lcom/perm/kate/EditGroupManagerActivity;Z)Z

    .line 86
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$2;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupManagerActivity;->access$200(Lcom/perm/kate/EditGroupManagerActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$2;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupManagerActivity;->access$100(Lcom/perm/kate/EditGroupManagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
