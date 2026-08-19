.class Lcom/perm/kate/Helper$9;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$from_group:Z

.field final synthetic val$new_status:Ljava/lang/String;

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(JLjava/lang/String;ZLandroid/app/Activity;)V
    .locals 0

    .line 1267
    iput-wide p1, p0, Lcom/perm/kate/Helper$9;->val$owner_id:J

    iput-object p3, p0, Lcom/perm/kate/Helper$9;->val$new_status:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/perm/kate/Helper$9;->val$from_group:Z

    iput-object p5, p0, Lcom/perm/kate/Helper$9;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1269
    new-instance p1, Lcom/perm/kate/Helper$9$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/Helper$9$1;-><init>(Lcom/perm/kate/Helper$9;)V

    .line 1274
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
