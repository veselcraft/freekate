.class final Lcom/perm/kate/Helper$8;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->showPublishStatusDialog(Landroid/app/Activity;JLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$from_group:Z

.field final synthetic val$new_status:Ljava/lang/String;

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(JLjava/lang/String;ZLandroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1122
    iput-wide p1, p0, Lcom/perm/kate/Helper$8;->val$owner_id:J

    iput-object p3, p0, Lcom/perm/kate/Helper$8;->val$new_status:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/perm/kate/Helper$8;->val$from_group:Z

    iput-object p5, p0, Lcom/perm/kate/Helper$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1124
    new-instance v0, Lcom/perm/kate/Helper$8$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/Helper$8$1;-><init>(Lcom/perm/kate/Helper$8;)V

    .line 1129
    invoke-virtual {v0}, Lcom/perm/kate/Helper$8$1;->start()V

    .line 1130
    return-void
.end method
