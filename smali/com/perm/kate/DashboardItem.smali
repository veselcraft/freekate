.class Lcom/perm/kate/DashboardItem;
.super Ljava/lang/Object;
.source "DashboardItems.java"


# instance fields
.field id:I

.field img:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/perm/kate/DashboardItem;->type:I

    .line 81
    iput p2, p0, Lcom/perm/kate/DashboardItem;->id:I

    .line 82
    iput-object p3, p0, Lcom/perm/kate/DashboardItem;->title:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    return-void
.end method
