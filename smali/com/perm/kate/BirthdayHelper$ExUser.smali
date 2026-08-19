.class Lcom/perm/kate/BirthdayHelper$ExUser;
.super Lcom/perm/kate/api/User;
.source "BirthdayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BirthdayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExUser"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field date:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/perm/kate/api/User;-><init>()V

    return-void
.end method
