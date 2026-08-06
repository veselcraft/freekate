.class Lcom/perm/kate/EditGroupManagerActivity$3;
.super Ljava/lang/Object;
.source "EditGroupManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 117
    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$3;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$3;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupManagerActivity;->access$300(Lcom/perm/kate/EditGroupManagerActivity;)V

    .line 121
    return-void
.end method
