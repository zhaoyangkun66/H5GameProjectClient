.class public abstract Lḓ/ཇ/ḓ$㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lḓ/ཇ/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u36ac"
.end annotation


# instance fields
.field public final உ:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lḓ/ཇ/ḓ$㚬;->உ:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final உ()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lḓ/ཇ/ḓ$㚬;->உ:Ljava/io/File;

    return-object v0
.end method

.method public abstract 䂻()Ljava/io/File;
.end method
