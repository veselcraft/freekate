.class Lcom/perm/kate/EditGroupManagerActivity$1;
.super Ljava/lang/Object;
.source "EditGroupManagerActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 70
    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$1;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 73
    const v0, 0x7f0e0151

    if-ne p2, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$1;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    const-string v1, "administrator"

    invoke-static {v0, v1}, Lcom/perm/kate/EditGroupManagerActivity;->access$002(Lcom/perm/kate/EditGroupManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    const v0, 0x7f0e0150

    if-ne p2, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$1;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    const-string v1, "editor"

    invoke-static {v0, v1}, Lcom/perm/kate/EditGroupManagerActivity;->access$002(Lcom/perm/kate/EditGroupManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$1;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    const-string v1, "moderator"

    invoke-static {v0, v1}, Lcom/perm/kate/EditGroupManagerActivity;->access$002(Lcom/perm/kate/EditGroupManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
